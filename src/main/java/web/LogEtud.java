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
@WebServlet("/LogEtud")
public class LogEtud extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int appo = 0 ;
		RequestDispatcher r = request.getRequestDispatcher("Etudiant.jsp");
		HttpSession sess = request.getSession();
		int appogge = Integer.parseInt(request.getParameter("appogge"));
		String cne = request.getParameter("massar");
		verifier v = new verifier(appogge,cne);
		try {
			appo = v.etudiantv();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		sess.setAttribute("appogge", appo);
		if( appo != 0) {
			r.forward(request, response);
		}
		else {
			sess.removeAttribute("appogge");
			response.sendRedirect("LogEtud.jsp");
		}
	}
}
