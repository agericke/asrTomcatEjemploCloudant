<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<% 

	String textoAnalisis = request.getAttribute("sentimientoObtenido").toString();
	String textoAnalizado = "";
	
	String color  = "#000";
	String border = "#000";

	if (textoAnalisis == null)
		textoAnalisis = "";
	
	System.out.println("Estoy fuera "+textoAnalisis);
	
	try {
		textoAnalizado = request.getParameter("textoSentimiento").toString();
		if (textoAnalizado == null)
			textoAnalizado = "";
		
		System.out.println("Estoy en "+textoAnalisis);

		if ( textoAnalisis.equals("Negative") ) {

			color = "#ff6666";
			border = "#ff0000";

		} else if ( textoAnalizado.equals("Positive") ) {

			color = "#80ff80";
			border = "#00ff00";

		} else {

			color = "#999999";
			border = "#808080";
		}
	}
	catch (Exception exception) {
		
		System.out.println("Estoy en la excepción "+textoAnalisis);
		textoAnalizado = "";
	}
	

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

</head>

<body>
	
	<jsp:include page="./headers/header.jsp" />
    
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">ANALIZADOR DE SENTIMIENTOS</h2>
            <h3 class="section-subheading text-muted">Introduce el texto que quieras analizar. El sistema analizará dicho texto y extraerá el sentimiento que se expresa en dicho texto.</h3>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
	          <div class="row">
                <div class="col-md-6 center">
                  <div class="form-group">
                    <textarea class="form-control" id="message" name="textoSentimiento"><%= textoAnalizado %></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                	<div class="analysis-info">
						<span id="sentiment" style="font-weight: 700;
	                                                        font-size: big;
	                                                        color: #ffffff;
	                                                        background: <%= color %>;
	                                                        margin: 0px 0px 10px 0px;
	                                                        overflow: hidden;
	                                                        padding: 2px;
	                                                        border-radius: 10px 0px 10px 0px;
	                                                        -webkit-border-radius: 10px 0px 10px 0px;
	                                                        border: 1.5px solid <%= border %>;
	                                                        width: 20%;
	                                                        text-align: center;
	                                                        float: left;">
			                <%= textoAnalisis %>
			                </span>
                        </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <a href="./sentimentanalysis.jsp"><button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Volver</button></a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

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