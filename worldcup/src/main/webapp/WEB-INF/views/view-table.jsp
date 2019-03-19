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
		    
		    .row {
  display: flex;
}

.row > div {
  flex: 1;
 
  border: 1px solid grey;
}
		</style>
	</head>
	<body class="form-light">
		<%@include file="view-menu.jsp"%>
		<form:form action="search" method="POST">
			<div class="container">
				<div class="row">					
					<div class="col-sm-12">				
						<h2 class="text-secondary text-center pink">Table</h2>	
					</div>
				</div>
				<br>
				<div class="row">
				    <div class="col-xs-4 a-nada">
				    	Team
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	MP				     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	W				     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	D				     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	L				     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	GF			     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	GA				     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	GD				     
				    </div>
				    <div class="col-xs-1 text-center a-nada">
				    	Pts.				     
				    </div>
				  </div>

 				<c:forEach items="${teams}" var="tempTeam">
			  		<c:url var="updateLink" value="/team/Update">
						<c:param name="teamId" value="${tempTeam.id}" />
					</c:url>	
					<div class="row">	
			            <div class="col-xs-4">
		                   	 <img height="25" width="25" src="<c:url value="/resources/img/${tempTeam.flagPath}"/>" class="img-thumbnail"/>&nbsp; 				                    
			                 <a href="${updateLink}">
			                	 <span class="a-match"> ${tempTeam.name}</span>&nbsp; 
	                    	 </a>
	                     </div> 
						
				    <div class="col-xs-1 text-center">
				    	MP				     
				    </div>
				    <div class="col-xs-1 text-center">
				    	W				     
				    </div>
				    <div class="col-xs-1 text-center">
				    	D				     
				    </div>
				    <div class="col-xs-1 text-center">
				    	L				     
				    </div>
				    <div class="col-xs-1 text-center">
				    	GF			     
				    </div>
				    <div class="col-xs-1 text-center">
				    	GA				     
				    </div>
				    <div class="col-xs-1 text-center">
				    	GD				     
				    </div>
				    <div class="col-xs-1 text-center">
				    	Pts.				     
				    </div>
					</div>						              
			</c:forEach>
			
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
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