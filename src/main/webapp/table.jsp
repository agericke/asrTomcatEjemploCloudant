<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import= "java.util.List" %>

<%@ page import="asr.proyectoFinal.dominio.Palabra" %>

<% 

	List<Palabra> docs = (List<Palabra>) request.getAttribute("palabras");

	System.out.println("Las palabras son: ");
	System.out.println(docs);
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="AlvaroGericke">

    <title>AGP Proyecto Final</title>

    <!-- Bootstrap core CSS -->
    <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles -->
    <link href="./css/agency.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<body>
	
	<jsp:include page="./headers/header.jsp" />
    
    <div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    <form action="/insertar"> 
	    	<div class = "col-lg-4 col-lg-offset-2">
	    		  <input type="text" name="palabra"><br>
	    	</div>
	    	<div class = "col-lg-2 col-lg-offset-1">
	    		  <button class="btn btn-primary btn-xs " value="Submit"><b>+</b> Insertar</button>
	    	</div>
	</form>
        <tr>
            <th>Id</th>
            <th>Valor</th>
        </tr>
    </thead>
    <% 
    	if(!docs.isEmpty()){
    		int counter = 0;
			for(Palabra palabra : docs){
				System.out.println(palabra);
	%>
			    <tr>      
			    	<td><%= counter %></td>
			        <td><%= palabra %></td>
			    </tr>
	<% counter++; }} %>
	</table>
    </div>
</div>

	<jsp:include page="./footer/footer.jsp" />
	
	<!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
    
	 <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../js/agency.min.js"></script>
</body>

</html>