<?php

	require 'Slim/Slim.php';
	\Slim\Slim::registerAutoloader();

	$app = new \Slim\Slim();

	$app->config(array(
	    'debug' => true,
	    'templates.path' => 'views'
	));

	$config = array(
		'dbname' => 'mascotas',
		'dbhost' => 'localhost',
		'dbuser' => 'root',
		'dbpass' => 'root'
	);

	/**Conexion a base de datos usando el metodo PDO**/

	

	$app->get("/",function() use($app){
		$app->render("template.php");
	});



	$app->post("/ayf",function() use($app,$config){
		$sql='SELECT * from animales a ';
		$edad=$app->request->params('edad');
		$params=array();
		if(!empty($edad)){
			if($edad==='cachorro'){
				$sql.='WHERE a.edad between 0 and 3';
			}
			else $sql.='WHERE a.edad>3';
			//$params[':edad']=$edad;
		}
		
		$datos = array();
		$gbd = new PDO('mysql:host='.$config['dbhost'].';dbname='.$config['dbname'], $config['dbuser'], $config['dbpass']);
		$res = $gbd->prepare($sql);
		$res->execute($params);

		foreach($res as $fila) {
			$datos[]=$fila;
		}

		header('Content-type: application/json');
		echo json_encode($datos);
	});


	/*$app->post("/macho",function() use($app,$config,$macho){
	//	$datos = array();
		$gbd = new PDO('mysql:host='.$config['dbhost'].';dbname='.$config['dbname'], $config['dbuser'], $config['dbpass']);
		$res = $gbd->query('SELECT * from animales m where  (m.generonombre =:macho )');

		foreach($res as $fila) {
			$datos[]=$fila;
		}

		header('Content-type: application/json');
		echo json_encode($datos);
	});*/



	$app->run();
?>