<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Descripción Cachorro</title>
    	<link rel="stylesheet" href="css/bootstrap.css">
    	<link rel="stylesheet" href="css/styles.css">
      <link rel="stylesheet"  href="css/piedepagina.css">
</head>
<body class="contenido" ng-app= "MyApp">
	<!--div para ubicar el encabezado-->
	<header>
	<div class="encabezado">
        <div class="container">
          <div  class="row encabezado" >
             	<div class="col-md-4 text-center logo">
                  <a href="#">
            	     <img src="images/logo.png" alt="logo"/>
                  </a>
             	</div>
            	<div class="col-md-4">
               		<h2 class="text-center titulo">Home4Pets</h2>
             	</div>	
              <div class="col-md-4 text-center ing visible-lg">
                   <img src="images/ing.png" alt=""/>
              </div>			
          </div>
        </div>
    </div>
	</header>
            
<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------- -->

        <div ng-view></div>


<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------ --> 


  

  <!---Pie de pagina -->
  <footer>
     <div class="bajar page-prefooter">
                <div class="container">
                  <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                      <h2>Acerca de</h2>
                      <p>
                         Home4Pets es una aplicación dedicada al cuidado y adopcion de animales sin hogar
                      </p>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs12 footer-block">
                      <h2>Subscribete con tu correo</h2>
                      <div class="subscribe-form">
                        <form action="javascript:;">
                          <div class="input-group">
                            <input type="text" placeholder="mail@email.com" class="form-control">
                            <span class="input-group-btn">
                            <button class="btn" type="submit">Enviar</button>
                            </span>
                          </div>
                        </form>
                      </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                      <h2>Siguenos en</h2>
                      <ul class="social-icons">
                        <li>
                          <a href="http://es.wikipedia.org/wiki/RSS" data-original-title="rss" class="rss"></a>
                        </li>
                        <li>
                          <a href="https://www.facebook.com" data-original-title="facebook" class="facebook"></a>
                        </li>
                        <li>
                          <a href="https://www.twitter.com" data-original-title="twitter" class="twitter"></a>
                        </li>
                        <li>
                          <a href="https://plus.google.com/" data-original-title="googleplus" class="googleplus"></a>
                        </li>
                        <li>
                          <a href="https://co.linkedin.com/" data-original-title="linkedin" class="linkedin"></a>
                        </li>
                        <li>
                          <a href="https://www.youtube.com/" data-original-title="youtube" class="youtube"></a>
                        </li>
                        <li>
                          <a href="https://vimeo.com/" data-original-title="vimeo" class="vimeo"></a>
                        </li>
                      </ul>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                      <h2>Contactanos</h2>
                      <address class="margin-bottom-40">
                        Teléfonos: 316-3360478 o al 3178400737<br>
                        Correo: <a href="mailto:info@metronic.com">info@home4pets.com</a>
                      </address>
                    </div>
                  </div>
                </div>
              </div>
  </footer>
          <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-1.11.1.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <!-- framework angular-->
        <script src="js/angular.min.js"></script>        
        <script src="js/angular-route.min.js"></script>
        <script src="js/galeria.js"></script>
</body>
</html>