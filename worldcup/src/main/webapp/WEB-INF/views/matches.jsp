<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
			
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>World Cup 2018/2022</title>
		
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	</head>
	<body>
		<form:form action="saveMatches" modelAttribute="matches" method="POST">			
						
			<%@include file="menu.jsp"%>
			
			<div class="container">	
				<h2 class="text-secondary">Matches
					<button type="button" class="btn btn-outline-dark" onclick="location.href='/worldcup/matches/new'" title="Add Match">+</button>
				</h2>
				<c:forEach var="tempMatch" items="${matches}">					
					<div class="row">
						<div class="col-sm-12">
							<c:url var="updateLink" value="/worldcup/team/Update">
								<c:param name="matchId" value="${tempMatch.id}" />
							</c:url>	
							<hr>								
							<a href="${updateLink}"> ${tempMatch.name}</a>							
						</div>
					</div>		
				</c:forEach>
			</div>		
		</form:form>
	</body>
</html>