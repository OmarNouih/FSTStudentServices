<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="metier.Connect"%>
<%@page import="metier.verifier"%>
<%@page import="java.sql.*,javax.sql.*,java.text.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
	<% 
		Connection con = Connect.getConnection();
	    Statement s = con.createStatement();
	    RequestDispatcher dd = request.getRequestDispatcher("LogEtud.jsp");
	%>
<%
int appo = 0 ;
if(request.getSession().getAttribute("appogge") == null){
    dd.forward(request, response);
}
else{
	 String att = request.getSession().getAttribute("appogge").toString();
	 appo = Integer.parseInt(att) ;
}
if(appo != 0){
%>
    <nav>
        <label class="toggle">
            <i class="fa fa-bars"></i>
        </label>
        <div class="fst">
        <img alt="" src="./logo_small2.png">
        <h2>FST CHAOUIA</h2></div>
        <ul>
            <li><a href='index.jsp'>ACCUEIL</a></li>
            <li><a href='fstcha.jsp'>FSTCHA</a></li>
            <li><a href='formations.jsp'>FORMATIONS</a></li>
            <li class="active2"><a href='LogEtud.jsp'>ESPACE ETUDIANT</a></li>
                    </ul>
    </nav>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
        $('.toggle i').click(function () {
            $('ul').toggleClass("show");
        });
    </script>
<section>
<%ResultSet r = s.executeQuery("SELECT * FROM Etudiant WHERE APPOGGE =" + appo); while(r.next()){ %>
<div id="Fils1">
    <h2>E-Document<br><h3><span id="x1"> Bienvenu Mr/Mme : <%= r.getString("Nom")%> <%= r.getString("Prenom")%>
    </span><form action="Out" method="post">
	<button type="submit" name="logout2" >Deconexion</button></form>
    </h3></h2>
</div> <% } %>

<div class="douc">
<div class="demende">
	<h1> Nouvelle demande : </h1>
	<div class="formdo">
	<form action="docu" method="post">
	Document : 
	<select name="Document">
	   <option selected disabled>Chosissez ...</option>
		<option value="Attestation de Scolarite" >Attestation de Scolarité</option>
		<option value="Releve de Notes" >Relevé de Notes</option>
		<option value="Diplome" >Diplome</option>
	</select>
	<input type="text" name="Type" placeholder="Type de document" required="required">
	<button type="submit">Envoyer</button>
	</form></div>
	<!-- 		String Document = request.getParameter("Document");
			String Type = request.getParameter("Type");
			String ss = "En cours";
			String req = "INSERT INTO docu VALUES (NULL , ' " + appo + " ', '" + Document + "' ,'" + Type + "','" + ss + "')";
			int res2  = s.executeUpdate(req);
 	-->
 </div>
<br>
<div class="demende">
	<h1> Liste de mes demandes : </h1>
	<table id="tab1">
  	<tr>
    <th>Document</th>
    <th>Etat</th>
    <th>Signature</th>
  </tr>
  <%ResultSet res3 = s.executeQuery("SELECT * FROM docu WHERE APPOGGE = " + appo);%>
  <%while(res3.next()){%>
  <tr>
    <td><%= res3.getString(3) %></td>
    <td><%= res3.getString(5) %></td>
    <td>-</td>
  </tr> <% } %>
  </table>
</div>
</div>
</section>
<jsp:include page="footer.jsp" />

</body>
</html>
<% }
else {
    dd.forward(request, response);
}
%>