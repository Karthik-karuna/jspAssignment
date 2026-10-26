package control;

import logic.EmployeeLogic;
import model.EmployeeModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/listEmployees")
public class EmployeeListController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeLogic logic = new EmployeeLogic();
        List<EmployeeModel> employeeList = logic.getAllEmployees();

        request.setAttribute("employeeList", employeeList);
        request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
    }
}