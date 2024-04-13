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
@WebServlet("/EtudiantServlet")
public class EtudiantServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher r = request.getRequestDispatcher("Scolarite.jsp");
		Connection con = Connect.getConnection();
		Statement s;
		String ajouter = request.getParameter("ajouter");
		String afficher = request.getParameter("afficher"); 
		String supprimer = request.getParameter("supprimer");
		try {
		s = con.createStatement();
		if(ajouter != null) {
		String APPOGGE = request.getParameter("APPOGGE");
		String Nom = request.getParameter("Nom");
		String Prenom = request.getParameter("Prenom");
		String CIN = request.getParameter("CIN");
		String CNE = request.getParameter("CNE");
		String req = "INSERT INTO etudiant VALUES ('" + APPOGGE + "','" + Nom + " ', '" + Prenom + "' ,'" + CIN + "','" + CNE + "');";
		int res2 = s.executeUpdate(req);
		}
		if(afficher != null) {
		String APPOGGE = request.getParameter("APPOGGE");
		String NOM = request.getParameter("NOM");
		String OBSERVATION = request.getParameter("OBSERVATION");
		double NOTE = Double.parseDouble(request.getParameter("NOTES"));
		/* PreparedStatement st = con.prepareStatement("INSERT INTO affichage VALUES ('?',?, '?', ?)");
		st.setString(1, NOM);
		st.setInt(2, Integer.parseInt(APPOGGE));
		st.setString(3, OBSERVATION);
		st.setDouble(4, Double.parseDouble(NOTE));
		st.executeUpdate();  */ 
		String req = "INSERT INTO affichage VALUES ('" + NOM + "','" + APPOGGE + " ', '" + OBSERVATION + "' ,'" + NOTE + "');";
		 int res2 = s.executeUpdate(req); 
		}
		if(supprimer != null) {
			String nom = request.getParameter("module");
			String appogge = request.getParameter("appogge");
			int x =  s.executeUpdate("DELETE FROM affichage WHERE NOM  = '" + nom + "' AND APPOGGE = " + appogge);	
		}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		r.forward(request, response); 
	}
}
