<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

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

  <body id="page-top">

	<jsp:include page="./headers/header.jsp" />

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">PRÁCTICA FINAL ASR</div>
          <div class="intro-heading text-uppercase">Desarrollo de aplicaciones mediante Microserviios. Nuevo.</div>
          <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Ver Microservicios</a>
        </div>
      </div>
    </header>

    <!-- Services -->
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Microservicios</h2>
            <h3 class="section-subheading text-muted">Disfruta de los distintos Servicios que puedes usar.</h3>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-3">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading"><a href="../traductor.jsp">Traductor</a></h4>
            <p class="text-muted">Traduce cualquier texto. Microservicio con detección de idioma automático, y posible selección de varios idiomas de salida.</p>
          </div>
          <div class="col-md-3">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-comment-o fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading"><a href="../emotionanalysis.jsp">ToneAnalyzer</a></h4>
            <p class="text-muted">Microservicio para analizar el tono expresado en un texto. Conoce la emoción que transmite una palabra</p>
          </div>
          <div class="col-md-3">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-comments-o fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading"><a href="../sentimentanalysis.jsp">Sentiment Analyzer</a></h4>
            <p class="text-muted">Microservicio para analizar el sentimiento expresado en un texto. Adjunto tu texto y conoce el sentimiento que transmite.</p>
          </div>
          <div class="col-md-3">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-database fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading"><a href="listar">Base de Datos</a></h4>
            <p class="text-muted">Microservicio que actúa como persistencia de la aplicación. Lista todos los nombres guardados, o inserta nuevos nombres.</p>
          </div>
        </div>
      </div>
    </section>


    <jsp:include page="./footer/footer.jsp" />
	
	 <!-- Bootstrap core JavaScript -->
    <script src="./vendor/jquery/jquery.min.js"></script>
    <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="./vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="./js/jqBootstrapValidation.js"></script>
    <script src="./js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="./js/agency.min.js"></script>
  </body>

</html>