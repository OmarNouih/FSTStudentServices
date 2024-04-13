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
            <li class="active2" ><a href='formations.jsp'>FORMATIONS</a></li>
            <li><a href='Etudiant.jsp'>ESPACE ETUDIANT</a></li>

        </ul>
    </nav>

	<section class="education">
	  		<div class="info">
    <h2>LIST DES FORMATIONS <br><span>FST CHAOUIA!</span></h2>
	</div>
	<div class="education-programs">
  <a name="lst"></a>
  <div class="program">
    <h2>Licences</h2>
    <div class="majors-grid">
      <div class="major">
      	<img alt="" src="./C.jpg">
        <h3>Computer Science</h3>
        <p>Learn the fundamentals of computer programming, data structures, and algorithms.</p>
      </div>
      <div class="major">
		<img alt="" src="./BI.jpg">
        <h3>Biology</h3>
        <p>Explore the living world around us and learn about the molecular mechanisms of life.</p>
      </div>
      <div class="major">
      <img alt="" src="./P.jpg">
        <h3>Psychology</h3>
        <p>Understand the complexities of human behavior and gain insight into the human mind.</p>
      </div>
      <div class="major">
      <img alt="" src="./B.png">
        <h3>Business Admin</h3>
        <p>Develop your leadership and management skills and learn the ins and outs of running a business.</p>
      </div>
    </div>
  </div>
  <a name="mst"></a>
  <div class="program">
    <h2>Masters</h2>
    <div class="majors-grid">
      <div class="major">
      <img alt="" src="./I.jpg">
        <h3>Intelligence</h3>
        <p>Study the latest techniques in machine learning and natural language processing.</p>
      </div>
      <div class="major">
      <img alt="" src="./ci.jpg">
        <h3>Civil Engineering</h3>
        <p>Design and build infrastructure that improves people's quality of life.</p>
      </div>
      <div class="major">
      <img alt="" src="./M.jpg">
        <h3>Marketing</h3>
        <p>Develop your skills in consumer behavior and market research, and learn how to create successful marketing campaigns.</p>
      </div>
      <div class="major">
      <img alt="" src="./H.jpg">
        <h3>Public Health</h3>
        <p>Learn about disease prevention and health promotion, and develop strategies to improve public health outcomes.</p>
      </div>
    </div>
  </div>
  <a name="cycle"></a>
  <div class="program">
    <h2>Cycles</h2>
    <div class="majors-grid">
      <div class="major">
		<img alt="" src="./L.jpg">
        <h3>Linguistics</h3>
        <p>Study the structure of language and how it is used in communication.</p>
      </div>
      <div class="major">
      <img alt="" src="./El.jpg">
        <h3>Electrical Eng</h3>
        <p>Learn how to design and implement electrical systems and technologies.</p>
      </div>
      <div class="major">
      <img alt="" src="./ar.jpg">
        <h3>Architecture</h3>
        <p>Design and build spaces that are functional, beautiful, and sustainable.</p>
      </div>
      <div class="major">
      <img alt="" src="./t.jpg">
        <h3>Environmental SC</h3>
        <p>Understand the complex interactions between humans and the natural world, and develop solutions to environmental challenges.</p>
      </div>
    </div>
  </div>
</div>
	</section>
	<jsp:include page="footer.jsp" />
	
</body>
</html>