<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
	<%@ page import="com.akarmel.worldcup.util.Constant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title><%= Constant.APP_TITLE %></title>
		
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">	
		
		<style>	    
		    .btn-primary {
		        color: #ffffff !important;
		        background-color: #FFD700 !important; 
		        border-color: #FFD700 !important;
		        font-weight: bold !important;
		    }
		    
		    .btn-primary:hover {		     
		        background-color: #ffa500 !important;
		        border-color: #ffa500 !important;
		    }
		</style>
	</head>
	<body class="form-light">
		<%@include file="view-menu.jsp"%>
		<form:form action="search" method="POST">
			<div class="container">
				<div class="row">					
					<div class="col-sm-12">				
						<h2 class="text-secondary text-center pink">Matches</h2>	
					</div>
				</div>
				<hr class="line-yellow">
					<c:forEach var="tempMatch" items="${matches}">
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
							<img src="<c:url value="/resources/img/${tempMatch.team_a.flagPath}"/>" class="img-thumbnail form-dark" height="42" width="42"/>
							<span class="a-match">${tempMatch.team_a.name}</span>								
						</div>
						<div class="col-sm-6">	
							<img height="42" width="42" src="<c:url value="/resources/img/${tempMatch.team_b.flagPath}"/>" class="img-thumbnail form-dark"/>								
							<span class="a-match">${tempMatch.team_b.name} </span>
						</div>
					</div>						
					<hr class="line-yellow">	
				</c:forEach>
			</div>		
		
			</div>
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