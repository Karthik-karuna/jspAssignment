package control;

import logic.EmployeeLogic;
import model.EmployeeModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registerEmployee")
public class EmployeeRegisterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String dept = request.getParameter("department");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String email = request.getParameter("email");

        EmployeeModel emp = new EmployeeModel();
        emp.setName(name);
        emp.setAge(age);
        emp.setDepartment(dept);
        emp.setSalary(salary);
        emp.setEmail(email);

        EmployeeLogic logic = new EmployeeLogic();
        String result = logic.registerEmployee(emp);

        request.setAttribute("message", result);
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
}