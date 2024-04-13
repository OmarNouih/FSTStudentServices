package web;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Connect;


@SuppressWarnings("serial")
@WebServlet("/docu")
public class docu extends HttpServlet {

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x = "tt";
		HttpSession sess = request.getSession();
		String att = sess.getAttribute("appogge").toString();
		String Document = request.getParameter("Document");
		String Type = request.getParameter("Type");
		int appo = Integer.parseInt(att);
		String ss = "En cours";
		Connection con = Connect.getConnection();
		Statement s ;
	    try {
			s = con.createStatement();
			String ssc = "INSERT INTO docu VALUES (NULL , ' " + appo + " ', '" + Document + "' ,'" + Type + "','" + ss + "')";
			int res2  = s.executeUpdate(ssc);
	    } catch (SQLException e) {
			e.printStackTrace();
		}
	    response.sendRedirect("Docu.jsp");
	}	    
}

