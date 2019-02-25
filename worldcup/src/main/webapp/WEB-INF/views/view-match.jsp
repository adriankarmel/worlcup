<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.akarmel.worldcup.dictionary.text" />

<%@ page import="com.akarmel.worldcup.util.Constant"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
			
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	
		<title><%=Constant.APP_TITLE%></title>
		
		<script>
		window.onscroll = function() {scrollFunction()};
		
		function scrollFunction() {
			if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
				document.getElementById("myBtn").style.display = "block";
			} else {
				document.getElementById("myBtn").style.display = "none";
			}
		}
		
		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}	
	
		</script>
		<style>	    
		    .btn-primary {
		        color: #ffffff !important;
		        background-color: #ffa500 !important; 
		        border-color: #ffa500 !important;
		        font-weight: bold !important;
		    }
		    
		    .btn-primary:hover {		     
		        background-color: #d3d3d3 !important;
		        border-color: #d3d3d3 !important;
		    }	    		
		
		</style>		
	</head>
	<body id="page-top">	
		<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>	
		
		<form:form action="view" method="POST">
		<nav class="navbar navbar-light" style="background-color:#d3d3d3;">
		  <a class="navbar-brand" href="/worldcup/"><%= Constant.APP_TITLE %> <%=Constant.YEAR_2018%></a>	
		</nav>
		
		<div style="text-align: right;padding:5px;margin:5px 0px;background:#ccc;">
       <a href="${pageContext.request.contextPath}/login1?lang=en">Login (English)</a>
       &nbsp;&nbsp;
       <a href="${pageContext.request.contextPath}/login1?lang=fr">Login (French)</a>
       &nbsp;&nbsp;
       <a href="${pageContext.request.contextPath}/login1?lang=vi">Login (Vietnamese)</a>
    </div>
    
      <spring:message code="label.groupD" />
		
		<div class="row">
			<div class="col-lg-2">
				<select class="form-control" id="language" name="language" onchange="submit()">
					  <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
					  <option value="es" ${language == 'es' ? 'selected' : ''}>Español</option>
				 </select>
			</div>							
		</div>

<span class="blanco">	
	<fmt:message key="label.groupD" />
</span>	
		<br>
		<div class="container text-secondary">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-4">
					<div class="span9 btn-block no-padding">
						<button class="btn btn-large btn-block btn-primary" type="button"
							onclick="location.href='/worldcup/view/match/2018'">Matches</button>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4">	
					<div class="span9 btn-block no-padding">
						<button class="btn btn-large btn-block btn-primary" type="button"
							onclick="location.href='/worldcup/view/team/2018?year=2018'">Team</button>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4">	
					<div class="span9 btn-block no-padding">
						<button class="btn btn-large btn-block btn-primary" type="button"
							onclick="location.href='/worldcup/team/list?year=2022'">Table</button>
					</div>
				</div>			
			</div>
			<br>
			<div class="border border-secondary">
				<h2 class="text-secondary text-center">Matches</h2>
			</div>
			<hr class="line-grey">
			<c:forEach var="tempMatch" items="${matches}">
					<c:url var="updateLinkM" value="/match/Update">
						<c:param name="matchId" value="${tempMatch.id}" />
					</c:url>							
					<div class="row">
						<div class="col-md-6 text-justify-xs">	
							<h4>
								<img src="<c:url value="/resources/img/${tempMatch.team_a.flagPath}"/>" class="img-thumbnail"/>
								${tempMatch.team_a.name} ${tempMatch.result_A}
							</h4> 								
						</div>
						<div class="col-sm-6 text-justify-xs">	
							<h4>						
								<img src="<c:url value="/resources/img/${tempMatch.team_b.flagPath}"/>" class="img-thumbnail" />								
								 ${tempMatch.team_b.name} ${tempMatch.result_B}
							</h4>														
						</div>
					</div>	
									
					<div class="row">
						<div class="col-sm-12 text-justify-xs">
							${tempMatch.dia} 
						</div>
					</div>	
					<hr class="line-grey">	
				</c:forEach>
			</div>
		</form:form>
	</body>
</html>