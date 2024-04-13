<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="metier.Connect"%>
<%@page import="metier.verifier"%>
<%@page import="java.sql.*,javax.sql.*,java.text.*" %>
<% 
		verifier v = new verifier();
		Connection con = Connect.getConnection();
	    Statement s = con.createStatement();
%>
<%
int id = 0 ;
if(request.getSession().getAttribute("id") == null){
	response.sendRedirect("LoginScola.jsp");
}
else{
	 String att = request.getSession().getAttribute("id").toString();
	 id = Integer.parseInt(att) ;
}
if(id != 0){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <script src="functions.js"></script>
    <title>Document</title>
</head>
<body>
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
            <li><a href='Etudiant.jsp'>ESPACE ETUDIANT</a></li>

        </ul>
    </nav>
<div class="tit">
<h1><center>bienvenue dans votre espace!</center></h1>
<% ResultSet r = s.executeQuery("SELECT * FROM admin WHERE ID = " + id ); %>
<div class="decx">
<%while(r.next()){ %>
<h3 style="color: white;"><center>Monsieur/Madame : <%= r.getString(2) %> <%= r.getString(3) %></center></h3>
<form action="logout" method="post">
<button type="submit" class="btar">Deconexion</button></form>
</div>
</div>
<% } r.close();  %>
<div class="TITRE"><h1>ARTICLES :</h1></div>
<section class="mid">
  <section class="buart">
  <button id="buart" onclick="buart();"> AJOUTER DES ARTICES : </button>
  <div class="Articles">
    <form class="form" method="post" action="ServletScolarite">
      <h1>NOUVEL ARTICLE </h1>
      <span>Vous pouvez écrire le texte que vous souhaitez mettre dans le sujet, sachant que vous pouvez l'écrire sous la forme HTML5.</span>
      <input type="text" placeholder="Titre" name="titre" required="required"/>
      <textarea placeholder="Text" name="contenu" rows="5" cols="50" maxlength="130" required="required" ></textarea>
      <div id="nott">
      <div id="not">
        <label>Couleur :</label>
        <input type="color" name="color" value="#9c27b0" id="style1" required="required" />
      </div>
      <select name="type" id="type" required="required">
        <option value="Avis">Avis</option>
        <option value="Evenemet">Evenemet</option>
      </select>
    </div>
      <button type="submit">Ajouter un nouveau</button>
    </form>
   </div>
  </section>
  <section class="buetud">
  <button id="buetud" onclick="buetud();"> MODIFIER UN ANCIEN ARTICLE (CHOOSE UR ARTICLE FIRST) : </button>
  <% if(request.getParameter("modifier") != null) { %>
  <% r = s.executeQuery("SELECT * FROM Articles WHERE ID_Article = " + request.getParameter("id")); %>
  <%while(r.next()) {%>
  <div class="modi">
    <form class="form" method="post" action="delete">
      <h1>MODIFIER UN ARTICLE </h1>
      <span> Modifier votre article !</span>
      <input type="hidden" name="id" value="<%= r.getInt(1)%>">
      <input type="text" placeholder="Titre" name="titre" value="<%= r.getString(2) %>" required="required"/>
      <textarea placeholder="Text" name="contenu" rows="5" cols="50" maxlength="130" required="required" ><%= r.getString(3) %></textarea>
      <div id="nott">
      <div id="not">
        <label>Couleur :</label>
        <input type="color" name="color" value="<%= r.getString(5)%>" id="style1" required="required" />
      </div>
      <select name="type" id="type" required="required">
        <option value="Avis">Avis</option>
        <option value="Evenemet">Evenemet</option>
      </select>
    </div>
      <button type="submit" name="mod">Modifier</button>
    </form> <% }} %>
  </div>
  </section>
  <section class="butges">
    <button id="butges" onclick="butges();"> VOTRE ARTICLES (AFFICHER/SUPPRIMER/MODIFIER) : </button>
    <div class="gestion">
      <table id="gtable">
        <thead>
        <tr>
        <th>ID</th>
        <th>TITRE</th>
        <th>DATE</th>
        <th></th>
        </tr>
        </thead>
        <tbody>
        <% r = s.executeQuery("SELECT * FROM Articles ORDER BY ID_Article DESC "); %>
        <%while(r.next()) {%>
        <tr>
        <td><%= r.getInt(1)%></td><td><%= r.getString(2) %></td><td><%= r.getString(4) %></td><td>
        <form method="post" action="delete"><input type="hidden" name="id" value="<%= r.getInt(1)%>">
        <div id="butts">
        <button type="submit" name="modifier" style= "background: #36b9cc;">Modifier</button>
        <button type="submit" name="supprimer" id="supprimer" style= "background: #e74a3b;">SUPPRIMER</button>
        </div></form></td>
        </tr>
        <% } if (!r.next()) { %>
       	<% int inis = s.executeUpdate("ALTER TABLE articles AUTO_INCREMENT = 1 ;"); }%>
        </tbody>
        </table>
     </div>
  </section>
</section>
	<div class="TITRE" style="box-shadow: inset 0px 0px 0px 0px #6e6767;"><h1>ETUDIANTS :</h1></div>
	<section class="etudiants">
		<div class="etudajou">
		    <button id="etudajou" onclick="ajoutetu();"> AJOUTER UN NOUVEAU ETUDIANT : </button>
		    <div class="butoajo">
			<form class="form" method="post" action="EtudiantServlet" >
			<h1>ETUDIANTS :</h1>
			<span>Ajouter un nouveau etudiant :</span>
			<input type="text" placeholder="APPOGGE" name="APPOGGE" required="required"/>
			<input type="text" placeholder="Nom" name="Nom" required="required"/>
			<input type="text" placeholder="Prenom" name="Prenom" required="required"/>
			<input type="text" placeholder="CIN" name="CIN" required="required"/>
			<input type="text" placeholder="CNE" name="CNE" required="required" />
			<br>
			<button type="submit" class="button1" name="ajouter">Ajouter un nouveau</button>
			</form>
			<button onclick="window.location.href='DownloadExcel.jsp';" style="margin-left: 162px;">Download Excel</button>
			</div>
		</div>
		<div class="etudajou1">
		    <button id="etudajou1" onclick="afficheretu();"> AFFICHER UNE NOTE : </button>
		    <div class="butoaffi">
			<form class="form" method="post" action="EtudiantServlet" >
			<h1>NOTES :</h1>
			<span>Ajouter un nouveau etudiant :</span>
			<input type="text" placeholder="APPOGGE" name="APPOGGE" required="required"/>
			<input type="text" placeholder="NOM DU MODULE" name="NOM" required="required"/>
			<input type="text" placeholder="OBSERVATION" name="OBSERVATION" required="required"/>
			<input type="text" placeholder="NOTE" name="NOTES" required="required"/>
			<br>
			<button type="submit" class="button1" name="afficher">Afficher</button>
			</form>
			</div>
		</div>
		<section class="butges">
    	<button id="butges" onclick="butomodif();"> AFFICHAGES DES MODULES : </button>
    	<div class="butomodif">
        <table id="gtable">
        <thead>
        <tr>
        <th>NOM DU MODULE</th>
        <th>APPOGGE D'ETUDIANT</th>
        <th>NOTE</th>
		<th>OBSERVATION</th>
        <th></th>
        </tr>
        </thead>
        <tbody>
        <% r = s.executeQuery("SELECT * FROM affichage ORDER BY NOM ASC; "); %>
        <%while(r.next()) {%>
        <tr>
        <td><%= r.getString(1)%></td><td><%= r.getInt(2) %></td><td><%= r.getFloat(4)%></td><td> <%= r.getString(3)%></td><td>
        <form method="post" action="EtudiantServlet"><input type="hidden" name="module" value="<%= r.getString(1)%>">
        <input type="hidden" name="appogge" value="<%= r.getInt(2)%>"> 
        <button type="submit" name="supprimer" id="supprimer">SUPPRIMER</button>
		</form></td>
        </tr>
        <% } if (!r.next()) { %>
       	<% int inis = s.executeUpdate("ALTER TABLE articles AUTO_INCREMENT = 1 ;"); }%>
        </tbody>
        </table>
     	</div>
  		</section>
  		<section class="domandes">
    	<button id="domandes" onclick="butodoc();"> DEMANDES / DOCUMENTS : </button>
    	<div class="butdomo">
        <table id="gtable">
        <thead>
        <tr>
        <th>APPOGGE D'ETUDIANT</th>
        <th>DOCUMENT</th>
        <th>TYPE</th>
		<th>ETAT</th>
        <th></th>
        </tr>
        </thead>
        <tbody>
        <% r = s.executeQuery("SELECT * FROM docu "); %>
        <%while(r.next()) {%>
        <tr>
        <td><%= r.getString(2)%></td><td><%= r.getString(3) %></td><td><%= r.getString(4) %></td><td> <%= r.getString(5)%></td><td>
        <form method="post" action="Docums"><input type="hidden" name="IDdoc" value="<%= r.getString(1)%>">
        <input type="hidden" name="appogge" value="<%= r.getInt(2)%>"> 
        <div id="butts">
        <button type="submit" name="ACCEPTATION" style= "background: #1cc88a;">ACCEPTATION</button>
        <button type="submit" name="supprimer" id="supprimer" style= "background: #e74a3b;">SUPPRIMER</button>
        </div>
        </form></td>
        </tr>
        <% } if (!r.next()) { %>
       	<% int inis = s.executeUpdate("ALTER TABLE articles AUTO_INCREMENT = 1 ;"); }%>
        </tbody>
        </table>
     	</div>
  		</section>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
<% }
%>