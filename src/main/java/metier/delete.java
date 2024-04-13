package metier;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "/delete", urlPatterns = { "/delete" })
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher r = request.getRequestDispatcher("Scolarite.jsp");
		request.setAttribute("id", request.getAttribute("id"));
		try {
		String id = request.getParameter("id");
		Connection con = Connect.getConnection();
	    Statement s = con.createStatement();
		if(request.getParameter("supprimer") != null) {
		int x =  s.executeUpdate("DELETE FROM articles WHERE ID_Article  = '" + id + "';");
		}
		if(request.getParameter("mod") != null) {
			PreparedStatement st = con.prepareStatement("UPDATE articles SET Titre = ?, contenu = ?, color = ?, Type = ? WHERE ID_Article = ?");
			st.setString(1, request.getParameter("titre"));
			st.setString(2, request.getParameter("contenu"));
			st.setString(3, request.getParameter("color"));
			st.setString(4, request.getParameter("type"));
			st.setString(5, request.getParameter("id"));
			st.executeUpdate();
			/* String update = "UPDATE articles SET Titre = '" + request.getParameter("titre") + "' , contenu = '" + request.getParameter("contenu")
			+ "' , color = '" + request.getParameter("color") + "' , Type = '" + request.getParameter("type") + "' WHERE 'ID_Article' = " + request.getParameter("id") ;
			int i =  s.executeUpdate(update); */
		}
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		r.forward(request, response); 
		}
}
