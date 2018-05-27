<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
    
    <!-- Contact -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">TRADUCTOR</h2>
            <h3 class="section-subheading text-muted">Introduce el texto que quieras traducir y el idioma al que quieres traducirlo.</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form id="contactForm" name="sentMessage" novalidate="novalidate">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="message" placeholder="Texto Traducido"></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Send Message</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Your Website 2018</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline quicklinks">
              <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Terms of Use</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    
    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
    
	<div class="container">
		<div class="row">
			<h2>Inserta el texto que quieres traducir.</h2>
			
			<div class="test-1">
			<div class="col-md-6">
	
			    <div class="input-controls-container">
	    		    <textarea class="form-control" placeholder="Comment..."></textarea>
	    		    <div class="input-controls">
	        	        <div class="btn-group">
	        		        <button class="btn btn-link">
	        		            <span class="glyphicon glyphicon-paperclip"></span>
	        		        </button>
	        		        <button class="btn btn-link">
	        		            <span class="glyphicon glyphicon-ok"></span>
	        		        </button>
	    		        </div>
			        </div>
			    </div>
			</div>		
			
			<div class="col-md-6">
	
			    <div class="input-controls-container expand">
	    		    <textarea class="form-control">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacinia aliquet justo, vitae ullamcorper lectus dictum in. Nunc pulvinar rutrum erat sed condimentum. Aliquam erat volutpat. Vivamus tristique sem nibh. Pellentesque sollicitudin auctor urna et volutpat. Mauris et ex eu enim molestie ornare. Maecenas fermentum odio ac erat vehicula pretium. Maecenas tincidunt molestie leo, sed semper tortor vulputate quis. Morbi blandit congue augue et volutpat. </textarea>
	    		    <div class="input-controls">
	        	        <div class="btn-group">
	        		        <button class="btn btn-link">
	        		            <span class="glyphicon glyphicon-paperclip"></span>
	        		        </button>
	        		        <button class="btn btn-link">
	        		            <span class="glyphicon glyphicon-ok"></span>
	        		        </button>
	    		        </div>
			        </div>
			    </div>
			</div>
			</div>
			<div class="test-2">
	            <div class="col-md-6">
	    
	    		    <div class="input-controls-container">
	        		    <textarea class="form-control"></textarea>
	        		    <div class="input-controls">
	            	        <div class="btn-group">
	            		        <button class="btn btn-link">
	            		            <span class="glyphicon glyphicon-paperclip"></span>
	            		        </button>
	            		        <button class="btn btn-link">
	            		            <span class="glyphicon glyphicon-ok"></span>
	            		        </button>
	        		        </div>
	    		        </div>
	    		    </div>
	    		</div>		    
	    		<div class="col-md-6">
	    
	    		    <div class="input-controls-container expand">
	        		    <textarea class="form-control">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis lacinia aliquet justo, vitae ullamcorper lectus dictum in. Nunc pulvinar rutrum erat sed condimentum. Aliquam erat volutpat. Vivamus tristique sem nibh. Pellentesque sollicitudin auctor urna et volutpat. Mauris et ex eu enim molestie ornare. Maecenas fermentum odio ac erat vehicula pretium. Maecenas tincidunt molestie leo, sed semper tortor vulputate quis. Morbi blandit congue augue et volutpat. </textarea>
	        		    <div class="input-controls">
	            	        <div class="btn-group">
	            		        <button class="btn btn-link">
	            		            <span class="glyphicon glyphicon-paperclip"></span>
	            		        </button>
	            		        <button class="btn btn-link">
	            		            <span class="glyphicon glyphicon-ok"></span>
	            		            Text
	            		        </button>
	        		        </div>
	    		        </div>
	    		    </div>
	    		</div>		
			</div>
		</div>
	</div>

	<jsp:include page="./footer/footer.jsp" />
	
	 <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="../js/jqBootstrapValidation.js"></script>
    <script src="../js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../js/agency.min.js"></script>
</body>

</html>