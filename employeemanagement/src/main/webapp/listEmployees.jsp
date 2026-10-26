<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.EmployeeModel" %>
<html>
<head>
    <title>Employee List</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f7f6; margin: 0; padding: 20px; }
        .container { max-width: 900px; background: white; padding: 30px; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1); margin: auto; }
        h2 { text-align: center; color: #333; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 12px; border: 1px solid #ddd; text-align: center; }
        th { background-color: #007bff; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .btn-container { text-align: center; margin-top: 20px; }
        a { text-decoration: none; background-color: #28a745; color: white; padding: 10px 20px; border-radius: 4px; }
        a:hover { background-color: #218838; }
    </style>
</head>
<body>

<div class="container">
    <h2>Employee Directory</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Email</th>
        </tr>
        <%
            List<EmployeeModel> list = (List<EmployeeModel>) request.getAttribute("employeeList");
            if (list != null && !list.isEmpty()) {
                for (EmployeeModel emp : list) {
        %>
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getName() %></td>
            <td><%= emp.getAge() %></td>
            <td><%= emp.getDepartment() %></td>
            <td><%= emp.getSalary() %></td>
            <td><%= emp.getEmail() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6">No employees found in the database.</td>
        </tr>
        <% } %>
    </table>

    <div class="btn-container">
        <a href="register.jsp">Register New Employee</a>
    </div>
</div>

</body>
</html>