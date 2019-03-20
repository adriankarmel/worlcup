<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
	<%@ page import="com.akarmel.worldcup.util.Constant" %>
		
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
	
		<title><%= Constant.APP_TITLE %></title>
		
		<script>
			$(function () {
				  $('[data-toggle="tooltip"]').tooltip()
			})
			
			$(document).ready(function() {				
				var pathname = window.location.pathname;
				$('.navbar-nav > li > a[href="'+pathname+'"]').parent().addClass('active');
			})
		</script>
	</head>
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="#"><%= Constant.APP_TITLE %> <%= Constant.YEAR_2022 %></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarColor02">
		    <ul class="navbar-nav">
		      <li class="nav-item">
		        <a class="nav-link" href="/worldcup/view/team">Teams <span class="sr-only">(current)</span></a>
		      </li>   
		      <li class="nav-item">
		        <a class="nav-link" href="/worldcup/view/match">Matches</a>
		      </li>		
	  		  <li class="nav-item">
		        <a class="nav-link" href="/worldcup/view/table">Table</a>
		      </li>		
		        
		      <li class="nav-item">
		        <a class="nav-link" href="/worldcup/">Home</a>
		      </li>
		    </ul>		
		  </div>
		</nav>
		<br>
	