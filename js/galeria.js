var app=angular.module("MyApp", ["ngRoute"]);

app.config(function($routeProvider){
	$routeProvider
		.when('/',{
				templateUrl:'views/Contenido.php',
				controller:'GaleriaController'
			})
			.when('/descripcion',{
				templateUrl:'views/Descripcion.php',
				controller:'DescripcionController'
			})
			.when('/contactanos',{
				templateUrl:'views/Contactanos.php',
				controller:'menuController'
			})

		});


	app.controller("GaleriaController", function ($scope,$http, $location){

		$scope.items=[];
		$scope.animalActual=null;


	$scope.cargarDatos=function(params){

		console.log(params);
		$http({url:'/Proyecto-php/ayf', params: params, method:'POST', responseType:'json'}).
		  success(function(data, status, headers, config) {
		  	//$scope.$apply(function(){
		  		$scope.items=data;
		  	//});
		  }).
		  error(function(data, status, headers, config) {
		  		
		  });

	};

		$scope.paginar=function(n){

			console.log("siiiiiiiii");

		$http.post('galeriaAnimales.json',n).
		  success(function(data, status, headers, config) {
		  	//$scope.$apply(function(){
		  		$scope.items=data;
		  	//});
		  }).
		  error(function(data, status, headers, config) {
		  		
		  });	
		
	};



	$scope.showItem= function (item) 
	 {
	 	$scope.animalActual=item;
	 	
		console.log(item);

		$location.path('/descripcion');

		//console.log("infoAnimal");
	};



	$scope.buscar=function(){
		var a = $scope.busqueda;
		console.log(a);
		};

		$scope.contactar=function(){
			console.log("entro");
			$location.path('/contactanos');
		}

		$scope.filtroedad=function(edad){
			
			$scope.cargarDatos({edad:edad});
		}

		$scope.filtroEspecie=function(tipo){

			$scope.cargarDatos({especie:tipo});
		}

		$scope.filtroGenero=function(genero){

			$scope.cargarDatos({generonombre:genero});
		}

		$scope.filtroUbicacion=function(ubicacion){

			$scope.cargarDatos({ubicacion:ubicacion});
		}

	$scope.cargarDatos();

});


	app.controller("DescripcionController", function ($scope,$http,$location)
	{
	

});


	app.controller("menuController", function ($scope,$http,$location){

		
});



