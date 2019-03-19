<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
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
<body class="form-dark">
	<form:form action="saveMatch" modelAttribute="match" method="POST">
		
		<%@include file="menu.jsp"%>

		<div class="container">
			<h2 class="text-secondary text-center letter-gradient">
				<%= Constant.APP_TITLE %> <%= Constant.YEAR_2022 %>
			</h2>			
			<h2 class="text-secondary yellow">Match</h2>
			<hr class="line-yellow">
			<div class="form-group">
				<form:hidden path="id" />
			</div>
			
			<div class="form-group">
				<div class="row">
					<div class="col-sm-6">
						<label class="text-secondary">Select Team A</label>
						<form:select path="team_a.id" cssClass="form-control">
							<c:forEach var="tempTeamA" items="${theTeam_a}">
								<option value="${tempTeamA.id}" ${match.team_a.id == tempTeamA.id ? 'selected' : ''}>${tempTeamA.name}</option>
							</c:forEach>
						</form:select>
					</div>
					<div class="col-sm-6">						
						<label class="text-secondary">Scort Team A</label>
						<form:select path="result_A" cssClass="form-control">
							<option value="0" ${match.result_A == "0" ? 'selected' : ''}>0</options>
							<option value="1" ${match.result_A == "1" ? 'selected' : ''}>1</options>	
							<option value="2" ${match.result_A == "2" ? 'selected' : ''}>2</options>	
							<option value="3" ${match.result_A == "3" ? 'selected' : ''}>3</options>
							<option value="4" ${match.result_A == "4" ? 'selected' : ''}>4</options>
							<option value="5" ${match.result_A == "5" ? 'selected' : ''}>5</options>
							<option value="6" ${match.result_A == "6" ? 'selected' : ''}>6</options>
							<option value="7" ${match.result_A == "7" ? 'selected' : ''}>7</options>
							<option value="8" ${match.result_A == "8" ? 'selected' : ''}>8</options>
							<option value="9" ${match.result_A == "9" ? 'selected' : ''}>9</options>
							<option value="10" ${match.result_A == "10" ? 'selected' : ''}>10</options>	
						</form:select>								
					</div>
				</div>
			</div>	
			<hr class="line-yellow">	
			<div class="form-group">	
				<div class="row">
					<div class="col-sm-6">					 	
						<label class="text-secondary">Select Team B</label>
						<form:select path="team_b.id" cssClass="form-control">
							<c:forEach var="tempTeamB" items="${theTeam_b}">
								<option value="${tempTeamB.id}" ${match.team_b.id == tempTeamB.id ? 'selected' : ''}>${tempTeamB.name}</option>
							</c:forEach>
						</form:select>
					</div>									
					<div class="col-sm-6">
						<label class="text-secondary">Scort Team B</label>
						<form:select path="result_B" cssClass="form-control">
							<option value="0" ${match.result_B == "0" ? 'selected' : ''}>0</options>
							<option value="1" ${match.result_B == "1" ? 'selected' : ''}>1</options>
							<option value="2" ${match.result_B == "2" ? 'selected' : ''}>2</options>	
							<option value="3" ${match.result_B == "3" ? 'selected' : ''}>3</options>
							<option value="4" ${match.result_B == "4" ? 'selected' : ''}>4</options>
							<option value="5" ${match.result_B == "5" ? 'selected' : ''}>5</options>
							<option value="6" ${match.result_B == "6" ? 'selected' : ''}>6</options>
							<option value="7" ${match.result_B == "7" ? 'selected' : ''}>7</options>
							<option value="8" ${match.result_B == "8" ? 'selected' : ''}>8</options>
							<option value="9" ${match.result_B == "9" ? 'selected' : ''}>9</options>
							<option value="10" ${match.result_B == "10" ? 'selected' : ''}>10</options>	
						</form:select>
					</div>
				</div>
			</div>		
			<hr class="line-yellow">
			<div class="form-group">	
				<div class="row">
					<div class="col-sm-6">
						<label for="dia" class="text-secondary">Date</label>
						<form:input path="dia" cssClass="form-control"
								id="datepicker"  placeholder="yyyy-MM-dd" />
					</div>	
				 	<div class="col-sm-6">						
						<label for="hora" class="text-secondary">Time</label>
						<form:input path="hora" cssClass="datepicker form-control" id="datepicker" placeholder="HH:mm" />
					</div>
				</div>					 
			</div>		
		 	<div align="center">				
				<button type="submit" class="btn default">Save</button>		
				<button type="button" class="btn default" onclick="location.href='/worldcup/match/<%= Constant.YEAR_2022%>'">Go Back</button>																	   				
			</div>
		</div>
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