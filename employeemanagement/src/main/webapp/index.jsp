<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Management System</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f7f6; text-align: center; padding-top: 50px; }
        .container { max-width: 400px; background: white; padding: 40px; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1); margin: auto; }
        h1 { color: #333; }
        .btn { display: block; background-color: #007bff; color: white; padding: 12px; margin: 15px 0; border-radius: 4px; text-decoration: none; font-size: 16px; }
        .btn:hover { background-color: #0056b3; }
    </style>
</head>
<body>

<div class="container">
    <h1>Employee Management</h1>
    <p>Welcome to the MVC Web Application</p>
    <a href="register.jsp" class="btn">Register Employee</a>
    <a href="listEmployees" class="btn">View All Employees</a>
</div>

</body>
</html>