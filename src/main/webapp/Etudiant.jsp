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
    <h2>E-Scolarité<br><h3><span id="x1"> Bienvenu Mr/Mme : <%= r.getString("Nom")%> <%= r.getString("Prenom")%>
    </span><form action="Out" method="post">
	<button type="submit" name="logout2" >Deconexion</button></form>
    </h3></h2>
</div> <% } %>
<div class="espaceE">
    <div id="Fils2">
        <a href="Docu.jsp" class="f2">
            <img src="./1.png" alt="">
            <h3>E-Document</h3>
            <span>Demander, suivre et récupérer vos documents officiels en ligne.</span>
        </a>
        <a href="Consultation.jsp" class="f2">
            <img src="./5.png" alt="">
            <h3>E-Consultation</h3>
            <span>Consulter vos résultats aux examens.</span>
        </a>
        <a class="f2">
            <img src="./3.png" alt="">
            <h3>E-Formulaire <font color="red">SOON!!</font></h3>
            <span>Ce service permet le rempissage des formualires tel que la fiche de voeux, fiche lauréat etc.</span>
        </a>
        <a href="" class="f2">
            <img src="./4.png" alt="">
            <h3>E-Planning</h3>
            <span>Consulter vos emplois de temps et vos planning des examens.</span>
        </a>
        <a href="" class="f2">
            <img src="./6.png" alt="">
            <h3>E-Support</h3>
            <span>Ce service permet rechereche multi-critères, la consultation et le téléchargement des supports pédagogiques.</span>
        </a>
        <a href="https://www.mamda-mcma.ma/fr" class="f2">
            <img src="./2.png" alt="">
            <h3>Convention de la mcma</h3>
            <span>Mutuelle Centrale Marocaine d'Assurances.</span>
        </a>

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