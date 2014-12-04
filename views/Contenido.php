
  <?php require("menu.php"); ?>
	<!---contenido -->
	<div>
		<div class="container lado">
            <div class="row mediano">
                <div class="">
                   <h1 class="page-header subtitulo">Misión mascotas en adopción</h1>
                </div>
           <!---contenido imagenes- -->
                 <div>
                      <div class="col-md-4 col-sm-6 col-xs-12 col-lg-3 portfolio-item" ng-repeat="i in items " >
                          <div class="tamanioimagen bordeC superior  imgn">
                              <img id="clickeable" style="cursor:pointer;" class="img-responsive" ng-click="showItem(i)" ng-src="images/{{i.imagen}}" alt="">
                              <div class="inferior"> 
                                  <img class="img-responsive"  ng-src="images/{{i.genero}}" alt="">
                              </div>  
                              <div> 
                                  <a class="btn"></a>
                                  <h3 >
                                    {{i.nombre}}
                                  </h3>
                                  <h6>
                                     {{i.fundacion}}
                                  </h6>
                              </div>
                          </div>
                      </div>
                  </div>
            </div>
       </div>
	   </div>
    
            <!--div para los botones de siguiente y atras-->
  <section>
    <div class="blanco col-md-12 text-center">
        <a href="" id="atras" ng-click="paginar(2)" class="btn btn-success btn-lg boton1 color"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a href="" id="adelante" ng-click="paginar(1)"class="btn btn-success btn-lg boton1 color"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
    </section>