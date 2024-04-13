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
    <h2>E-Consultation<br><h3><span id="x1"> Bienvenu Mr/Mme : <%= r.getString("Nom")%> <%= r.getString("Prenom")%>
    </span><form action="Out" method="post">
	<button type="submit" name="logout2" >Deconexion</button></form>
    </h3></h2>
</div> <% } %>

<div id="Fils22">
    <div id="ftitre">
        <h3>Année universitaire :</h3>
        <h3 style = " color: #b50101e3 ;">2022/2023</h3>
        <h3>Session :</h3>
        <h3 style = " color: #b50101e3 ;">Automne</h3>
    </div>
    <div id="fnotes">
        <% ResultSet res = s.executeQuery("SELECT * FROM affichage WHERE APPOGGE = " + appo); %>
        <% while(res.next()){ %>
        <div class="notes">
            <div class="affi">
            <button id="<%= res.getString(1) %>" class="butn"> <%= res.getString(1) %></button>
            <table class="taba">
                <tr>
                    <th>NOTES</th>
                    <th>OBSERVATION</th>    
                </tr>
                <tr>
                    <td><%= res.getString(4) %></td>
                    <td><%= res.getString(3) %></td>    
                </tr>
            </table>
            </div>
        </div> <% } %>
    </div>   
</div>
</div>
</section>
    <script src="functions.js"></script>
<jsp:include page="footer.jsp" />

</body>
</html>
<% }
else {
    dd.forward(request, response);
   }
%>