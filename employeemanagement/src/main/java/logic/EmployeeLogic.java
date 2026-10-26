package logic;

import model.DbConnection;
import model.EmployeeModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeLogic {

    // Insert new employee
    public String registerEmployee(EmployeeModel emp) {
        try (Connection conn = DbConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement("INSERT INTO employee (name, age, department, salary, email) VALUES (?, ?, ?, ?, ?)")) {
            ps.setString(1, emp.getName());
            ps.setInt(2, emp.getAge());
            ps.setString(3, emp.getDepartment());
            ps.setDouble(4, emp.getSalary());
            ps.setString(5, emp.getEmail());
            ps.executeUpdate();
            return "Employee registered successfully!";
        } catch (Exception e) {
            return "Error: " + e.getMessage();
        }
    }

    // Retrieve all employees
    public List<EmployeeModel> getAllEmployees() {
        List<EmployeeModel> list = new ArrayList<>();
        try (Connection conn = DbConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM employee")) {
            while (rs.next()) {
                EmployeeModel emp = new EmployeeModel();
                emp.setId(rs.getInt("id"));
                emp.setName(rs.getString("name"));
                emp.setAge(rs.getInt("age"));
                emp.setDepartment(rs.getString("department"));
                emp.setSalary(rs.getDouble("salary"));
                emp.setEmail(rs.getString("email"));
                list.add(emp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // Update employee department and salary
    public void updateEmployee(EmployeeModel emp) {
        try (Connection conn = DbConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement("UPDATE employee SET department = ?, salary = ? WHERE id = ?")) {
            ps.setString(1, emp.getDepartment());
            ps.setDouble(2, emp.getSalary());
            ps.setInt(3, emp.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Delete employee by ID
    public void deleteEmployee(int id) {
        try (Connection conn = DbConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement("DELETE FROM employee WHERE id = ?")) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}