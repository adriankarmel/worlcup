<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 			
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
			
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	
		<title>World Cup 2018/2022</title>
	
<style>
      
div { box-sizing: border-box; }

.container {
  display: flex;
  justify-content: center;
  align-content: flex-start;
  -webkit-flex-flow: row wrap;
  flex-flow: row wrap;
  
  height: 500px;
  border: 1px solid #000000;
}

.circle {
    border: 5px solid  #7FFF00;
    border-radius: 50%;
    background-color: black;
    width: 200px;
    height: 200px;
    border-radius: 1000px;     
    margin: 50px 0.5em 0.5em 0.5em; 
    color: white;
  	font-weight: bold;
}

.circle.kitten {
	border: 5px solid #FFD700;
   background-color: black;
  background-size: cover;
  background-repeat: none;
  background-position: center center;
  color: white;
  font-weight: bold;
}

.circle:hover {
  background-color: grey;

}

.aligner {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  text-align: center;
}


</style>
</head>
		
<body style="background:black;">
<% 

//response.sendRedirect("team/list");

//response.sendRedirect("match/list"); 
%>


<div class="container">
  <div class="circle">
    <div class="aligner">
      	<a href="#" style="text-decoration:none;color:white;">Fixture 2018</a>
    </div>
  </div>
  
 <div class="circle" style="border: 5px solid #FF4500;">
    <div class="aligner">
      	<a href="#" style="text-decoration:none;color:white;">Fixture 2022</a>
    </div>
  </div> 
 
  <div class="circle kitten">
    <div class="aligner">
      	<a href="/worldcup/team/list" style="text-decoration:none;color:white;">Fixture Crud </a>
    </div>
  </div>
</div>  
</body>
</html>
