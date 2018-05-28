<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<% 

	String emocionObtenida = request.getAttribute("emocionObtenida").toString();
	String textoAnalizado = "";
	
	System.out.println(emocionObtenida);
	
	String imagepath  = "./img/neutral-emotion.png";

	if (emocionObtenida == null)
		emocionObtenida = "";
	
	System.out.println("Estoy fuera "+emocionObtenida);
	
	try {
		textoAnalizado = request.getParameter("textoEmocion").toString();
		if (textoAnalizado == null)
			textoAnalizado = "";
		
		System.out.println("Estoy en "+emocionObtenida);

		if ( emocionObtenida.equals("Anger") ) {

			imagepath = "./img/anger.png";

		} else if ( emocionObtenida.equals("Fear") ) {

			imagepath = "./img/negative-fear.png";

		}  else if ( emocionObtenida.equals("Joy") ) {

			imagepath = "./img/joy.png";

		}  else if ( emocionObtenida.equals("Sadness") ) {

			imagepath = "./img/sadness.png";

		}  else {

			imagepath = "./img/neutral-emotion.png";

		}
	}
	catch (Exception exception) {
		
		System.out.println("Estoy en la excepción "+emocionObtenida);
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
            <h2 class="section-heading text-uppercase">TONE ANALYZER</h2>
            <h3 class="section-subheading text-muted">Introduce el texto que quieras analizar. El sistema analizará dicho texto y extraerá el tono que se expresa en dicho texto.</h3>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
	          <div class="row">
                <div class="col-md-6 center">
                  <div class="form-group">
                    <textarea class="form-control" id="message" name="textoEmocion"><%= textoAnalizado %></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                	<div class="analysis-info"> 
                            <span id="emotion" style="margin: 0px 0px 10px 10px;
                            							overflow: hidden;
                            							padding: 2px;
                            							border-radius: 10px 0px 10px 0px;
                            							-webkit-border-radius: 10px 0px 10px 0px;
                            							width: 10%;
                                                        text-align: center;
                                                        float: left;">
                                <img id="emotion-image" src="<%= imagepath %>" style="height: 25px; width: auto">
                            </span>
                        </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <a href="./emotionanalysis.jsp"><button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Volver</button></a>
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