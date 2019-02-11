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
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> 			

<title>World Cup 2018/2022</title>
<script type="text/javascript">
/* 	$(document).ready(function() {	               
        $("#datepicker").datepicker({
         	  popup : {
           	  position : "bottom left",
           	  origin   : "top left"
          }
        });
     });  */
</script>
</head>
<body>
	<form:form action="saveMatch" modelAttribute="match" method="POST">
		<form:hidden path="id" />
		<%@include file="menu.jsp"%>

		<div class="container">
			<div class="form-group">
				<label class="text-secondary">Select Team A</label>
				<form:select path="teamA.id" cssClass="form-control">
					<c:forEach var="tempTeamA" items="${team_a}">
						<option value="${tempTeamA.id}">${tempTeamA.name}</options>
					</c:forEach>
				</form:select>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label for="time" class="text-secondary">Date</label>
						<form:input path="dia" cssClass="form-control"
							id="datepicker"  placeholder="yyyy-MM-dd" />
					</div>
				</div>	
			 	<div class="col-sm-6">
					<div class="form-group">
						<label for="datepicker" class="text-secondary">Time</label>
						<form:input path="hora" cssClass="datepicker form-control" id="datepicker" placeholder="HH:mm:ss" />
					</div>
				</div> 
			</div>	
			<div class="form-group">
				<label class="text-secondary">Select Team B</label>
				<form:select path="teamB.id" cssClass="form-control">
					<c:forEach var="tempTeamB" items="${team_a}">
						<option value="${tempTeamB.id}">${tempTeamB.name}</options>
					</c:forEach>
				</form:select>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label class="text-secondary">Scort Team A</label>
						<form:select path="result_A" cssClass="form-control">
							<option value="1">1</options>	
							<option value="2">2</options>	
							<option value="3">3</options>
							<option value="4">4</options>
							<option value="5">5</options>
							<option value="6">6</options>
							<option value="7">7</options>
							<option value="8">8</options>
							<option value="9">9</options>
							<option value="10">10</options>	
						</form:select>
					</div>			
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label class="text-secondary">Scort Team B</label>
						<form:select path="result_B" cssClass="form-control">
							<option value="1">1</options>
							<option value="2">2</options>	
							<option value="3">3</options>
							<option value="4">4</options>
							<option value="5">5</options>
							<option value="6">6</options>
							<option value="7">7</options>
							<option value="8">8</options>
							<option value="9">9</options>
							<option value="10">10</options>	
						</form:select>
					</div>	
				</div>		
			</div>	
		 	<div align="center">				
				<button type="submit" class="btn default">Save</button>
				<button type="button" class="btn default" onclick="location.href='/worldcup/team/list'">Go Back</button>																	   				
			</div>
		</div>
	</form:form>
</body>
</html>