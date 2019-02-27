<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.akarmel.worldcup.util.Constant" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>World Cup 2018/2022</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
	
	<style>
.circle {
    width: 50%;
    height:0;
    padding-bottom: 50%;
    -moz-border-radius: 50%; 
    -webkit-border-radius: 50%; 
    border-radius: 50%;
    background: #4679BD; 
}
.circle-text {
    width:50%;
}
.circle-text:after {
    content: "";
    display: block;
    width: 100%;
    height:0;
    padding-bottom: 100%;
    background: #4679BD; 
    -moz-border-radius: 50%; 
    -webkit-border-radius: 50%; 
    border-radius: 50%;
}
.circle-text div {
    float:left;
    width:100%;
    padding-top:50%;
    line-height:1em;
    margin-top:-0.5em;
    text-align:center;
    color:white;
}

</style>
</head>
<body class="form-dark">
	<form:form action="saveTeam" modelAttribute="team" method="POST">
		<form:hidden path="id" />
		<%@include file="menu.jsp"%>

		<div class="container">
			<h2 class="text-secondary text-center letter-gradient">
					<%= Constant.APP_TITLE %> <%= Constant.YEAR_2022 %>
			</h2>			
			<h2 class="text-secondary">			 
			 	  Team<img src="<c:url value="/resources/img/${team.flagPath}"/>" class="img-thumbnail form-dark"/>
			</h2>
			<div class="form-group">
				<label for="name" class="text-secondary">Name</label>
				<form:input path="name" cssClass="form-control"
					autofocus="autofocus" />
			</div>
			
			<div class="form-group">
				<label class="text-secondary">Select Group</label>
				<form:select path="grupete.id" cssClass="form-control">
					<c:forEach var="tempgro" items="${theGroup}">
						<option value="${tempgro.id}" ${ team.grupete.id ==  tempgro.id ? 'selected' : ''}>
							${tempgro.name}							
						</options>
					</c:forEach>
				</form:select>			
			</div>
			<div class="form-group">
				<label class="text-secondary">Flag</label>
				<form:input path="flagPath" cssClass="form-control" />	
			</div>
			<form:hidden path="anio"  value="<%= Constant.YEAR_2022%>"/>	
			<%--
		 	<div class="form-group">
				<label class="text-secondary yellow">Year</label>				
				<form:select path="anio" cssClass="form-control">
					<option value="2018" ${team.anio == "2018" ? 'selected' : ''}>2018</options>
					<option value="2022" ${team.anio == "2022" ? 'selected' : ''}>2022</options>					
				</form:select>					
			</div>		 
			--%>
			<hr>
			<div align="center">
				<button type="submit" class="btn default">Save</button>
				<button type="button" class="btn default"
					onclick="location.href='/worldcup/team/list?year=<%= Constant.YEAR_2022%>'">Go Back</button>
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