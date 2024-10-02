package servlets;

import database.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));

        try {
            Connection con = DatabaseConnection.initializeDatabase();
            String query = "DELETE FROM products WHERE id=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, productId);
            pst.executeUpdate();
            con.close();
            response.sendRedirect("viewProducts");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error deleting product!");
        }
    }
}
