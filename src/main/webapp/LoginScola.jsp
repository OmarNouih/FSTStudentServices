<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <li><a href='formations.jsp'>FORMATIONS</a></li>
            <li><a href='Etudiant.jsp'>ESPACE ETUDIANT</a></li>

        </ul>
    </nav>
<div class="body2">
<div class="login-page">
    <h1><center>bienvenue dans votre espace!</center></h1></div>
    <div class="form3">
      <div class="login">
        <div class="login-header">
          <h3>AUTHENTIFIEZ-VOUS</h3>
          <p>Veuillez vous connecter à partir d'ici (si vous n'avez pas de compte, obtenez-le auprès de l'administration).</p>
        </div>
      </div>
      <form class="login-form3" method="post" action="connect">
        <input type="text" placeholder="Courriel" name="Courriel"/>
        <input type="password" placeholder="Mot de passe" name="password"/>
        <button type="submit">Connexion</button>
        <p class="message">Vous n'avez pas de compte ? <a href="#">Contact us!</a></p>
      </form>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />

</body>
</html>