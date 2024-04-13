<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="style.css">

<style type="text/css">
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
}
footer{
  width: 100%;
  bottom: 0;
  left: 0;
  background: #111;
}
footer .content{
  max-width: 1350px;
  margin: auto;
  padding: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
footer .content p,a{
  color: #fff;
}
footer .content .box{
  width: 33%;
  transition: all 0.4s ease;
}
footer .content .topic{
  text-transform: uppercase;
  font-size: 21px;
  font-weight: 600;
  color: #fff;
  margin-bottom: 16px;

}
footer .content p{
  text-align: justify;
}
footer .content .lower .topic{
  margin: 24px 0 5px 0;
}
footer .content .lower i{
  padding-right: 16px;
}
footer .content .middle{
  padding-left: 80px;
}
footer .content .middle a{
  line-height: 32px;
}
footer .content .right input[type="text"]{
  height: 45px;
  width: 100%;
  outline: none;
  color: gray;
  background: #000;
  border-radius: 5px;
  padding-left: 10px;
  font-size: 17px;
  border: 2px solid #864b90;
}
footer .content .right input[type="submit"]{
  height: 42px;
  width: 100%;
  font-size: 18px;
  color: white;
  background: #864b90;
  outline: none;
  border-radius: 5px;
  letter-spacing: 1px;
  cursor: pointer;
  margin-top: 12px;
  border: 2px solid #864b90;
  transition: all 0.3s ease-in-out;
      display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: center;
}
.content .right input[type="submit"]:hover{
  background: none;
  color:  #864b90;
}
footer .content .media-icons a{
  font-size: 16px;
  height: 45px;
  width: 45px;
  display: inline-block;
  text-align: center;
  line-height: 43px;
  border-radius: 5px;
  border: 2px solid #222222;
  margin: 30px 5px 0 0;
  transition: all 0.3s ease;
}
.content .media-icons a:hover{
  border-color: #864b90;
  color: white;
}
footer .bottom{
  width: 100%;
  text-align: right;
  color: #d9d9d9;
  padding: 0 40px 5px 0;
}
footer .bottom a{
  color: #864b90;
}
footer a{
  transition: all 0.3s ease;
}
footer a:hover{
  color: #864b90;
}
}
</style>
</head>
<body>
	<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Footer | CodingLab</title>--->
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
   </head>
<body>
 <footer>
   <div class="content">
     <div class="left box">
       <div class="upper">
         <div class="topic">À PROPOS DE NOUS</div>
         <p>La Faculté des Sciences et Techniques est une institution universitaire dédiée à l'enseignement et la recherche scientifique dans les domaines des sciences et des technologies. Elle offre une formation de qualité aux étudiants et mène des travaux de recherche innovants dans divers domaines scientifiques.</p>
       </div>
       <div class="lower">
         <div class="topic">NOUS CONTACTER</div>
         <div class="phone">
           <a href="#"><i class="fas fa-phone-volume"></i>+212 70884 9710</a>
         </div>
         <div class="email">
           <a href="#"><i class="fas fa-envelope"></i>omarnouih@gmail.com</a>
         </div>
       </div>
     </div>
     <div class="middle box">
       <div class="topic">NOS SERVICES</div>
       <div><a href="#">Formation académique</a></div>
       <div><a href="#">Recherche scientifique</a></div>
       <div><a href="#">Orientation étudiante</a></div>
       <div><a href="#">Formation continue</a></div>
       <div><a href="#">Collaboration industrielle</a></div>
       <div><a href="#">Engagement communautaire</a></div>
     </div>
     <div class="right box">
       <div class="topic">S'ABONNER</div>
       <form action="#">
         <input type="text" placeholder="Enter email address">
         <input type="submit" name="" value="Envoyer">
         <div class="media-icons">
           <a href="#"><i class="fab fa-facebook-f"></i></a>
           <a href="#"><i class="fab fa-instagram"></i></a>
           <a href="#"><i class="fab fa-twitter"></i></a>
           <a href="#"><i class="fab fa-youtube"></i></a>
           <a href="#"><i class="fab fa-linkedin-in"></i></a>
         </div>
       </form>
     </div>
   </div>
   <div class="bottom">
     <p style="margin: 6px 5px;">Copyright © 2023 <a href="#">FST CHAOUIA</a> All rights reserved</p>
   </div>
 </footer>

</body>
</html>
	
</body>
</html>