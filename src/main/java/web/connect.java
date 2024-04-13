package web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.verifier;

@SuppressWarnings("serial")
@WebServlet("/connect")
public class connect extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0 ;
		RequestDispatcher r = request.getRequestDispatcher("Scolarite.jsp");
		HttpSession sess = request.getSession();
		String mail = request.getParameter("Courriel");
		String password = request.getParameter("password");
		verifier v = new verifier(mail,password);
		try {
			id = v.test();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		sess.setAttribute("id", id);
		if( id != 0) {
			r.forward(request, response);
		}
		else {
			sess.removeAttribute("id");
			response.sendRedirect("LoginScola.jsp");
		}
	}
}
