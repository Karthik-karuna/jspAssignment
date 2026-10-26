<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Registration</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f7f6; margin: 0; padding: 20px; }
        .container { max-width: 500px; background: white; padding: 30px; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1); margin: auto; }
        h2 { text-align: center; color: #333; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; color: #666; }
        input[type="text"], input[type="number"], input[type="email"] { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; background-color: #28a745; color: white; padding: 10px; border: none; border-radius: 4px; font-size: 16px; cursor: pointer; }
        button:hover { background-color: #218838; }
        .message { text-align: center; margin-bottom: 15px; font-weight: bold; color: #007bff; }
    </style>
</head>
<body>

<div class="container">
    <h2>Employee Registration</h2>

    <!-- Display success or error message from servlet -->
    <div class="message">
        <%
            String msg = (String) request.getAttribute("message");
            if (msg != null) {
                out.println(msg);
            }
        %>
    </div>

    <form action="registerEmployee" method="post">
        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" required>
        </div>
        <div class="form-group">
            <label>Age:</label>
            <input type="number" name="age" required>
        </div>
        <div class="form-group">
            <label>Department:</label>
            <input type="text" name="department" required>
        </div>
        <div class="form-group">
            <label>Salary:</label>
            <input type="number" step="0.01" name="salary" required>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        <button type="submit">Register Employee</button>
    </form>
</div>

</body>
</html>