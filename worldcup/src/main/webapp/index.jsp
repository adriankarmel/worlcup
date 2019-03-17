<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 			
	<%@ page import="com.akarmel.worldcup.util.Constant" %>
<!DOCTYPE html>
	
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"> 	
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	
		<title><%= Constant.APP_TITLE %></title>
	
	<style>
	      
		div { box-sizing: border-box; }
		
		.container {
			  display: flex;
			  justify-content: center;
			  align-content: flex-start;
			  -webkit-flex-flow: row wrap;
			  flex-flow: row wrap;		  
			  height: 500px;			 
		}
		
		.circle {
		 	background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:%230070d8' /><stop offset='0.5' style='stop-color:%232cdbf1' /><stop offset='1' style='stop-color:%2383eb8a' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
  			background-size: 100% 100%; /* Fix for Fifefox image scaling */		   
		    border-radius: 50%;
		    background-color: black;
		    width: 200px;
		    height: 200px;
		    border-radius: 1000px;     
		    margin: 50px 0.5em 0.5em 0.5em; 
		    color: white;
		  	font-weight: bold;
		}
		.circle1 {
		 	background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(255,0,0)' /><stop offset='0.5' style='stop-color:rgb(255,128,0)' /><stop offset='1' style='stop-color:%2383eb8a' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
  			background-size: 100% 100%; /* Fix for Fifefox image scaling */		   
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
		    background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(0,128,0)' /><stop offset='0.5' style='stop-color:rgb(128,0,128)' /><stop offset='1' style='stop-color:rgb(170,255,119)' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
  			background-size: 100% 100%; /* Fix for Fifefox image scaling */	    background-color: black;
		    background-size: cover;
		    background-repeat: none;
		    background-position: center center;
		    color: white;
		    font-weight: bold;
		}
		
		.circle:hover {
		     background-color: #009999;	
		     font-size: 20px;	
		}

		.circle1:hover {
		     background-color: rgb(255,165,0);
		     font-size: 20px;		
		}

		.circle.kitten:hover {
		     background-color: #4CA64C;	
		      font-size: 20px;		
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
		

<% 

//response.sendRedirect("team/list");

//response.sendRedirect("match/list"); 
%>

	<body style="background:black;"> 
	
		<div class="row">
			<div class="col-sm-12">
				<div class="grad1"></div>
			</div>
		</div>
		<div class="container">
		
		
		  <div class="circle">
		    <div class="aligner">
		      	<a href="/worldcup/view/match/2018?teamId=0" style="text-decoration:none;color:white;"><%= Constant.FIXTURE_2018 %></a>
		    </div>
		  </div>
		  
		 <div class="circle1">
		    <div class="aligner">
		      	<a href="#" style="text-decoration:none;color:white;"><%= Constant.FIXTURE_2022 %></a>
		    </div>
		  </div> 
		  
		  <div class="circle kitten">
		    <div class="aligner">
		      	<a href="/worldcup/team/<%= Constant.YEAR_2022%>" style="text-decoration:none;color:white;"><%= Constant.FIXTURE_CRUD %> <%= Constant.YEAR_2022%></a>
		    </div>
		  </div>
		</div>
 		<div class="footer">
    	   <p class="text-center text-white lead">
				<a href="http://www.akarmel.ca" target="_blank" style="text-decoration:none;color:white !important;">			
					www.akarmel.ca
				</a>			
			</p>
   		</div>
	</body>
</html>