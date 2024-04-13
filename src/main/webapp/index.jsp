<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="metier.Connect"%>
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
	%>
    <nav>
        <label class="toggle">
            <i class="fa fa-bars"></i>
        </label>
        <div class="fst">
        <img alt="" src="./logo_small2.png">
        <h2>FST CHAOUIA</h2></div>
        <ul>
            <li class="active2" ><a href='index.jsp'>ACCUEIL</a></li>
            <li><a href='fstcha.jsp'>FSTCHA</a></li>
            <li><a href='formations.jsp'>FORMATIONS</a></li>
            <li><a href='Etudiant.jsp'>ESPACE ETUDIANT</a></li>

        </ul>
    </nav>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
        $('.toggle i').click(function () {
            $('ul').toggleClass("show");
        });
    </script>
<section id="conte"  >
<div class="content">
  <div class="info">
    <h2>FACULTÉ DES SCIENCES <br><span>ET TECHNIQUES!</span></h2>
    <p>La faculté des sciences et techniques de Chaouia. Il s'agit d'une université publique située à Settat, une ville dans la région de Chaouia-Ouardigha. Cette faculté offre des programmes d'études dans les domaines des sciences, de l'ingénierie et de la technologie, tels que la physique, les mathématiques, l'informatique, l'électronique, la mécanique, l'énergie renouvelable, etc. Elle est reconnue pour sa qualité d'enseignement et pour sa recherche scientifique de pointe, ainsi que pour sa contribution au développement socio-économique de la région et du pays.</p>
    <a href="#" class="info-btn">More info</a>
</div>
</section>
<div class="menu">
  <div class="avis">
    <h2>Avis</h2>
    <div class="aviss">
      <%  ResultSet res2 = s.executeQuery("SELECT * FROM Articles WHERE Type = 'Avis' ORDER BY ID_Article DESC ");
      while(res2.next()){ %>
      <div class="avi">
        <div class="img" style="background-color: <%= res2.getString(5) %>">
        <h3 style="font-size: xx-large;"><%= res2.getString(1) %></h3>
        <span style="font-size: 15px;"><%= res2.getString(4) %></span>
        </div>
        <div>
          <div class="titre"><h3><%= res2.getString(2) %></h3></div>
          <div class="contenu"><%= res2.getString(3) %></div>
        </div>
      </div>
      <% } %>
  </div>
  </div>
  <div class="evenemnt">
    <h2>Evénements</h2>
    <div class="events">
    <% ResultSet res1 = s.executeQuery("SELECT * FROM Articles WHERE Type = 'Evenemet' ORDER BY ID_Article DESC ");
    while(res1.next()){ %>
    <div class="event">
      <div class="img" style="background-color: <%= res1.getString(5) %>">
        <h3><%= res1.getString(1) %></h3>
        <span><%= res1.getString(4) %></span>
      </div>
      <div>
        <div class="titre"><h3><%= res1.getString(2) %></h3></div>
        <div class="contenu"><%= res1.getString(3) %></div>
      </div>
    </div>
    <% } %>
    </div>
  </div>
</div>
<section class="formation">
  <div class="fotitre">
    <h1>Formation initiale</h1>
  </div>
  <div class="formations">
    <a href="formations.jsp#lst" class="forma">
      <img src="./cycle.jpg" alt="">
      <h2>Master Sciences et Techniques</h2>
      <span>Afin d'accompagner l'évolution et la transformation des secteurs d'activité locaux et nationaux, et faire face aux nouveaux enjeux qu’elles induisent, la FSTBM propose des filières d'ingénieur en vue de former des ingénieurs de haute qualité, adaptés aux besoins du marché du tavail.</span>
    </a>
    <a  href="formations.jsp#mst" class="forma">
      <img src="./master.jpg" alt="">
      <h2>Filière Ingénieur</h2>
    <span>L'offre de formation en Master Sciences et Techniques a pour objectif la formation de cadres supérieurs avec un haut niveau de qualification, permettant au diplômé non seulement une insertion fluide dans les secteurs d'activité, mais aussi une bonne plateforme pour entammer ses études docotrales.</SPan>
    </a>
    <a  href="formations.jsp#cycle" class="forma">
      <img src="./licence.jpg" alt="">
      <h2>Licence Sciences et Techniques</h2>
      <SPan>La FSTBM propose une offre diversifiée en Licence Sciences et Techniques, permettant au diplômé de s'insérer dans le marché du travail, à travers des stages pratiques qui valorisent sa compétence, ou de continuer ses études supérieures.</SPan>
    </a>
  </div>
</section>
<section class="facto">
    <h1 class="fach1" >LA FACULTÉ</h1>
    <div class="fac">
	<div class="doyen">
	<img alt="" src="./Doyenne.jpg">
	<h2>MOT DU DOYENNE</h2>
	<span style="color: black;">Avant tout, je suis fier de diriger la Faculté des Sciences et Techniques de Beni Mellal (FSTBM) relevant de L’Université Sultan Moulay Slimane (USMS). C’est un grand défi pour moi et un grand honneur. Qui plus est, assumer une telle responsabilité exige détermination, crédibilité et de grands sacrifices. Ainsi, je suis prêt à relever tous les défis grâce à l’implication inclusive du corps professoral et administratif et des opérateurs concernés.</span>
	</div>
	<div class="presenta">
	<h2>PRÉSENTATION</h2>
	<span>a Faculté des Sciences et Techniques de Beni Mellal (FSTBM) relevant de l’Université Sultan Moulay Slimane a été créée en 1994. C’est un établissement public d’enseignement supérieur scientifique et technique à accès régulé dont le but est de développer des programmes d’enseignement et de recherche.</span>
	</div>
	<div class="depa">
	<h2>DÉPARTEMENTS</h2>
	<span>La Faculte des sciences et thecnique chaouia abrite 9 départements.</span>
	</div>
	</div>
</section>
<jsp:include page="footer.jsp" />
</body>
</html>