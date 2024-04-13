<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="metier.Connect"%>
<%@page import="java.sql.*,javax.sql.*,java.text.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
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
            <li><a href='index.jsp'>ACCUEIL</a></li>
            <li class="active2" ><a href='fstcha.jsp'>FSTCHA</a></li>
            <li><a href='formations.jsp'>FORMATIONS</a></li>
            <li><a href='Etudiant.jsp'>ESPACE ETUDIANT</a></li>

        </ul>
    </nav>
	<section id="conte"  >
		<div class="content">
  		<div class="info">
    	<h2>FACULTÉ DES SCIENCES <br><span>ET TECHNIQUES!</span></h2>
		</div>
		</section>	
	<section class="midfst">
		<div class="midpage">
			<h1>Présentation</h1>
			<p>La Faculté des Sciences et Techniques de Chaouia (FSTC) est l'une des institutions d'enseignement supérieur les plus importantes de la région de Chaouia-Ouardigha au Maroc. Elle est située dans la ville de Settat, qui est une ville universitaire bien connue du Maroc. Elle a été créée en 1989 et a pour objectif principal de fournir une éducation de qualité dans les domaines des sciences et des techniques pour les étudiants de la région.</p>
			<p>La faculté propose une gamme complète de programmes de premier cycle, de deuxième cycle et de troisième cycle dans les domaines des mathématiques, de la physique, de la chimie, de l'informatique et de la biologie. Les programmes de premier cycle durent trois ans et mènent à l'obtention d'un diplôme de licence. Les programmes de deuxième cycle durent deux ans et mènent à l'obtention d'un diplôme de master. Les programmes de troisième cycle durent trois ans et mènent à l'obtention d'un diplôme de doctorat.</p>
	  		<p>La FSTC est connue pour son corps enseignant hautement qualifié et expérimenté. Les enseignants sont des experts dans leurs domaines et sont très engagés dans la recherche et l'innovation. La faculté dispose également d'installations modernes, notamment des laboratoires de recherche, des salles de classe équipées de technologies de pointe, des bibliothèques et des centres informatiques. Ces installations sont conçues pour soutenir l'apprentissage et la recherche et pour offrir aux étudiants un environnement éducatif stimulant et motivant.</p>
	  		<p>La FSTC est également très engagée dans la recherche scientifique et technique. Elle participe à plusieurs projets de recherche nationaux et internationaux et collabore avec des partenaires locaux et étrangers. Les étudiants de troisième cycle sont encouragés à participer à des projets de recherche et à collaborer avec des enseignants et des chercheurs de la faculté.</p>
	  		<p>Enfin, la FSTC est très engagée dans le développement de la région de Chaouia-Ouardigha. Elle travaille en étroite collaboration avec les autorités locales et les entreprises de la région pour développer des programmes de formation et de recherche qui répondent aux besoins de la région. La faculté est fière de son rôle de catalyseur de la croissance économique et de l'innovation dans la région.
	  		</p>
	  		<p>En résumé, la Faculté des Sciences et Techniques de Chaouia est une institution d'enseignement supérieur de premier plan dans la région de Chaouia-Ouardigha. Elle offre des programmes d'enseignement de qualité en sciences et techniques, des enseignants qualifiés et expérimentés, des installations modernes et un engagement en matière de recherche scientifique et technique. La faculté est également engagée dans le développement de la région et joue un rôle clé dans la promotion de la croissance économique et de l'innovation.
	  		</p>
		</div>
		<div class="midpage">
			<h1>Mot du doyenne</h1>
			<p>Chers étudiants, enseignants et membres du personnel de la Faculté des Sciences et Techniques de Chaouia,</p>
<p>C'est un grand honneur et un privilège pour moi de me présenter en tant que doyenne de cette institution d'enseignement supérieur de renom. En tant que première femme à occuper ce poste, je suis déterminée à faire de cette faculté un lieu d'apprentissage exceptionnel pour les étudiants et un environnement de travail stimulant pour les enseignants et les membres du personnel.</p>
<p>La Faculté des Sciences et Techniques de Chaouia est une institution dynamique et diversifiée qui offre des programmes d'enseignement de qualité dans les domaines des sciences et des techniques. Nous sommes fiers de notre corps enseignant hautement qualifié et expérimenté, ainsi que de nos installations modernes et de notre engagement en matière de recherche scientifique et technique.</p>
<p>En tant que doyenne, je suis déterminée à poursuivre notre mission de fournir une éducation de qualité à nos étudiants et de promouvoir l'excellence académique. Nous sommes engagés à offrir à nos étudiants des programmes d'enseignement de pointe, qui sont à jour avec les dernières tendances et développements dans leurs domaines respectifs.</p>
<p>Nous sommes également déterminés à promouvoir un environnement d'apprentissage inclusif et équitable, où chaque étudiant a l'opportunité de réaliser son potentiel et de se développer sur le plan personnel et professionnel. Nous sommes engagés à fournir un soutien et des ressources adéquats pour aider nos étudiants à réussir dans leur parcours académique et professionnel.</p>
<p>Je suis convaincue que la Faculté des Sciences et Techniques de Chaouia continuera d'être un leader dans l'enseignement supérieur dans la région de Chaouia-Ouardigha. Nous sommes fiers de notre héritage et de notre engagement à l'excellence académique et je suis convaincue que nous continuerons de produire des diplômés exceptionnels qui contribueront au développement de notre région et de notre pays.</p>
<p>Je vous remercie tous pour votre engagement envers notre faculté et je suis impatiente de travailler avec vous pour réaliser nos objectifs communs.</p>
<p>Bien cordialement,</p>
<p>La doyenne de la Faculté des Sciences et Techniques de Chaouia.</p>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
	
</body>
</html>