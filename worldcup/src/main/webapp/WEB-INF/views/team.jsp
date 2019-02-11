<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<body>
	<form:form action="saveTeam" modelAttribute="team" method="POST">
		<form:hidden path="id" />
		<%@include file="menu.jsp"%>

		<div class="container">
			<h2 class="text-secondary">
				Team <img src="<c:url value="/resources/img/${team.flagPath}"/>"
					Class="img-thumbnail" />
			</h2>
			<div class="form-group">
				<label for="name" class="text-secondary">Name</label>

				<form:input path="name" cssClass="form-control"
					autofocus="autofocus" />
			</div>
			
			<div class="form-group">
				<label class="text-secondary">Select Group</label>
				<form:select path="groupetes.id" cssClass="form-control">
					<c:forEach var="tempgro" items="${grupos}">
						<option selected="true" value="${tempgro.id}">
							${tempgro.name}							
						</options>
					</c:forEach>
				</form:select>			
			</div>
			
			<label class="text-secondary">Flag</label>

			<form:input path="flagPath" cssClass="form-control" />	
			<hr>
			<div align="center">
				<button type="submit" class="btn default">Save</button>
				<button type="button" class="btn default"
					onclick="location.href='/worldcup/team/list'">Go Back</button>
			</div>
		</div>
	</form:form>
</body>
</html>