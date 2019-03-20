<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 	
	<%@ page import="com.akarmel.worldcup.util.Constant" %>		
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>World Cup 2018/2022</title>
		
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<style>	    
		    .btn-primary {
		        color: #ffffff !important;
		        background-color: #FF4500 !important; 
		        border-color: #FF4500 !important;
		        font-weight: bold !important;
		    }
		    
		    .btn-primary:hover {		     
		        background-color: #ffa500 !important;
		        border-color: #ffa500 !important;
		    }
		</style>
		
	</head>
	<body class="form-nosodark"> 
		<%@include file="menu.jsp"%>
		<form:form action="search" method="POST">	
			<div class="container">	
				<div class="row">
					<div class="col-sm-6">
						<h2 class="text-secondary letter-gradient">
							<%= Constant.APP_TITLE %> <%= Constant.YEAR_2022 %>
						</h2>
					</div>
					<div class="col-sm-6">	
						<h2 class="text-secondary pink">Matches
							<button type="button" class="btn btn-outline-dark border-pink" onclick="location.href='/worldcup/match/new'" data-toggle="tooltip" data-placement="top" title="Add New Match">+</button>
						</h2>
					</div>	
				</div>		
				<hr class="line-yellow">
				<c:forEach var="tempMatch" items="${matches}">
					<c:url var="updateLinkM" value="/match/Update">
						<c:param name="matchId" value="${tempMatch.id}" />
					</c:url>
					<div class="row">
						<div class="col-sm-12">
							<span class="a-nada">${tempMatch.team_a.grupete.name}</span>
							<span class="a-match"> (${tempMatch.dia} ${tempMatch.hora})</span>							
						</div>		
					</div>	
					<div class="row">
						<div class="col-sm-12">
							&nbsp;			
						</div>		
					</div>													
					<div class="row">						
						<div class="col-sm-6">	
							<a href="${updateLinkM}">
								<img height="42" width="42" src="<c:url value="/resources/img/${tempMatch.team_a.flagPath}"/>" class="img-thumbnail form-dark"/>
								<span class="a-match">${tempMatch.team_a.name} (0)</span>								
							</a>	
						</div>						
						<div class="col-sm-6">	
							<a href="${updateLinkM}">							
								<img height="42" width="42" src="<c:url value="/resources/img/${tempMatch.team_b.flagPath}"/>" class="img-thumbnail form-dark"/>								
								<span class="a-match">${tempMatch.team_b.name} (0)</span>
							</a>						
						</div>						
					</div>						
					<hr class="line-yellow">	
				</c:forEach>
			</div>		
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>			
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>					
			<div class="footer">
	    	   <p class="text-center text-white lead">
					<a href="http://www.akarmel.ca" target="_blank" style="text-decoration:none;color:white !important;">			
						www.akarmel.ca
					</a>			
				</p>
	   		</div>		
		</form:form>			
	</body>
</html>