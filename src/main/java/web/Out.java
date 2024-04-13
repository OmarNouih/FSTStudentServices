package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/Out")
public class Out extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String logoutEtud = request.getParameter("logout2");
		if(logoutEtud != null) {
			request.getSession().removeAttribute("appogge");
			response.sendRedirect("LogEtud.jsp");
		}
	}
}
