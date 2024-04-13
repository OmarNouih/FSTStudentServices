package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
@SuppressWarnings("serial")
public class Logout extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("logout2")!= null) {
			HttpSession ses = request.getSession();
			ses.setAttribute("appogge", null);
			ses.invalidate();
			response.sendRedirect("LogEtud.jsp");
		}
	}
}

