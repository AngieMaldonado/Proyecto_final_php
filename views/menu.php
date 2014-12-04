<div class="" > 
                <nav class="navbar navbar-default color" role="navigation">
                  <div class="container-fluid">
                      <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                      </div>
                  </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <!--Menu -->
                     <ul class="nav navbar-nav ">
                          <li class="dropdown ">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown">Edad <span class="caret"></span></a>
                              <ul class="dropdown-menu" role="menu">
                                 <li ng-click="filtroedad('cachorro')"><a href="">Cachorros</a></li>
                                  <li ng-click="filtroedad('adulto')"><a href="">Adultos</a></li>
                              </ul>
                          </li>
                          <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown">Especie <span class="caret"></span></a>
                              <ul class="dropdown-menu" role="menu">
                                  <li ng-click="filtroEspecie('gato')"><a href="">Gatos</a></li>
                                  <li ng-click="filtroEspecie('perro')"><a href="">Perros</a></li>
                              </ul>
                          </li>
                          <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown">Genero <span class="caret"></span></a>
                              <ul class="dropdown-menu" role="menu">
                                  <li ng-click="filtroGenero('macho')"><a href="">Macho</a></li>
                                  <li ng-click="filtroGenero('hembra')"><a href="">Hembra</a></li>
                              </ul>
                          </li>
                          <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown">Ubicación <span class="caret"></span></a>
                              <ul class="dropdown-menu" role="menu">
                                  <li ng-click="filtroUbicacion('ciudad')"><a href="">Ciudad</a></li>
                                  <li ng-click="filtroUbicacion('departamento')"><a href="">Departamento</a></li>
                              </ul>
                          </li>
                          <li class="dropdown">
                              <a href="" ng-click="contactar()" class="dropdown-toggle letraColor" data-toggle="dropdown">Contactanos</span></a>
                          </li>
                      </ul>
                      <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                              <input type="text" class="form-control" ng-model="busqueda" placeholder="Buscar">
                            </div>
                            <button type="submit" class="btn btn-default" ng-click="buscar()">Buscar</button>
                      </form>
                 </div><!-- /.navbar-collapse -->
               </nav>
          </div><!-- /.container-fluid -->