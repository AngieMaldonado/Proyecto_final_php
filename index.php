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
		$sql='SELECT * from mascota a ';

		//Edad
		$edad=$app->request->params('edad');
		$params=array();
		if(!empty($edad)){
			if($edad==='cachorro'){
				$sql.='WHERE a.edad between 0 and 3';
			}
			else $sql.='WHERE a.edad>3';
			//$params[':edad']=$edad;
		}


		//Especie
		$especie=$app->request->params('especie');
		if(!empty($especie)){
			
			$sql.='WHERE a.especie =:especie';
			$params[':especie']=$especie;
		}
		
		//Genero
		$genero=$app->request->params('generonombre');
		if(!empty($genero)){
			
			$sql.='WHERE a.generonombre =:generonombre';
			$params[':generonombre']=$genero;
		}

		//Ubicacion
		$ubicacion=$app->request->params('ubicacion');
		if(!empty($ubicacion)){
			
			$sql.='WHERE a.ubicacion =:ubicacion';
			$params[':ubicacion']=$ubicacion;
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


	/*$app->post("/desc",function() use($app,$config){
		$sql='SELECT * from mascota a ';


		$id=$app->request->params('id');
		if(!empty($id)){
			if($id==='id'){	
			$sql.='WHERE a.id =id';
			}
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

	});	*/

	$app->run();
?>