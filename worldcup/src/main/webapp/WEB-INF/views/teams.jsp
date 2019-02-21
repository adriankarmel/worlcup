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
				<h2 class="text-secondary yellow">Teams
					<button type="button" class="btn btn-outline-dark border-yellow" onclick="location.href='/worldcup/team/new'" title="Add Team">+</button>
				</h2>		
				<hr class="line-yellow">
				<c:forEach var="tempTeam" items="${teams}">		
							
					<div class="row">
						<div class="col-sm-12">
							<c:url var="updateLink" value="/team/Update">
								<c:param name="teamId" value="${tempTeam.id}" />
							</c:url>	
													
							<img src="<c:url value="/resources/img/${tempTeam.flagPath}"/>" class="img-thumbnail form-dark"/>											
							<a href="${updateLink}" class="a-nada"> ${tempTeam.name}</a>							
						</div>
					</div>	
					<hr class="line-yellow">	
				</c:forEach>	
			</div>
		</form:form>
	</body>
</html>