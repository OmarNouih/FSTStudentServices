<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="metier.Connect"%>
<%@page import="java.sql.*,javax.sql.*,java.text.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body id="mauve">
	<% 
		Connection con = Connect.getConnection();
	    Statement s = con.createStatement();
		request.getSession().removeAttribute("appogge");
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
	<section class="logetu">
	 <div id="logpng"><img alt="" src="./pnglog.png"> </div>
	 <div id="logform">
        <h1>AUTHENTIFIEZ-VOUS</h1>
        <img alt="" src="./admin.png">
	 	<form action="LogEtud" method="post" id="form4">
        <input type="number" placeholder="APPOGGE" name="appogge"required/>
        <input type="text" placeholder="MASSAR" name="massar" required/>
        <button type="submit">Connexion</button>
        <p class="message">Vous n'avez pas de compte ? <a href="#">Contact us!</a></p>
       	</form>
	 </div>
	</section>
	<jsp:include page="footer.jsp" />
	
</body>
</html>