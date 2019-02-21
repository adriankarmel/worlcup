<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 			
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>World Cup 2018/2022</title>
		
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	</head>
	<body class="form-dark"> 
		<%@include file="menu.jsp"%>
		<form:form action="search" method="POST">	
			<div class="container">	
				<h2 class="text-secondary yellow">Matches
					<button type="button" class="btn btn-outline-dark border-yellow" onclick="location.href='/worldcup/match/new'" title="Add Match">+</button>
				</h2>
				<hr class="line-yellow">
				<c:forEach var="tempMatch" items="${matches}">
					<c:url var="updateLinkM" value="/match/Update">
						<c:param name="matchId" value="${tempMatch.id}" />
					</c:url>							
					<div class="row">
						<div class="col-sm-6 text-center">	
							<a href="${updateLinkM}" class="a-nada">
								<img src="<c:url value="/resources/img/${tempMatch.team_a.flagPath}"/>" class="img-thumbnail form-dark"/>
							</a>	
							<a href="${updateLinkM}" class="a-nada"> ${tempMatch.team_a.name}</a>	
						</div>
						<div class="col-sm-6 text-center">	
							<a href="${updateLinkM}" class="a-nada">							
								<img src="<c:url value="/resources/img/${tempMatch.team_b.flagPath}"/>" class="img-thumbnail form-dark"/>								
							</a>
							<a href="${updateLinkM}" class="a-nada">
									 ${tempMatch.team_b.name}
							</a>						
						</div>
					</div>	
					<div class="row">
						<div class="col-sm-12 text-center a-nada">
							${tempMatch.dia} - ${tempMatch.hora}
						</div>
					</div>	
					<hr class="line-yellow">	
				</c:forEach>
			</div>		
		</form:form>			
	</body>
</html>