package web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
@WebServlet("/Docums")
public class Docums extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acc = request.getParameter("ACCEPTATION");
		String supp = request.getParameter("supprimer");
		RequestDispatcher r = request.getRequestDispatcher("Scolarite.jsp");
		Connection con = Connect.getConnection();
		if(acc != null) {
			String id = request.getParameter("IDdoc");
			try {
			    Statement s = con.createStatement();
				int x =  s.executeUpdate("UPDATE docu SET Status = 'Accepter!' WHERE ID = " + id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(supp != null) {
			String id = request.getParameter("IDdoc");
			try {
			    Statement s = con.createStatement();
				int x =  s.executeUpdate("DELETE FROM docu WHERE ID = " + id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		r.forward(request, response); 
	}
}
