

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Connect;


@SuppressWarnings("serial")
@WebServlet("/login")
public class login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher r = request.getRequestDispatcher("connexion.jsp");
		Connection con = Connect.getConnection();
		Statement s;
		try {
		s = con.createStatement();
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String pseudo = request.getParameter("pseudo");
		String password = request.getParameter("password");
		String req = "INSERT INTO user VALUES (' " + nom + " ', '" + prenom + "' ,'" + email + "','" + pseudo + "','" + password + "')";
		int res2 = s.executeUpdate(req);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		r.forward(request, response); 
	}
}
