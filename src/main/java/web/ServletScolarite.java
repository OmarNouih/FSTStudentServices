package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Connect;

@SuppressWarnings("serial")
@WebServlet("/ServletScolarite")
public class ServletScolarite extends HttpServlet {

    public ServletScolarite() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		RequestDispatcher r = request.getRequestDispatcher("Scolarite.jsp");
		PrintWriter out = response.getWriter();
	    LocalDate date = LocalDate.now();    
		Connection con = Connect.getConnection();
		response.setContentType ( "text/html" );
		Statement s;
		try {
		s = con.createStatement();
		String titre = request.getParameter("titre");
		String contenu = request.getParameter("contenu");
		String type = request.getParameter("type");
		String color = request.getParameter("color");
		String req = "INSERT INTO articles VALUES (NULL, ' " + titre + " ', '" + contenu + "' ,'" + date + "','" + color + "','" + type + "')";
		int res2 = s.executeUpdate(req);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		r.forward(request, response); 
	}
}
