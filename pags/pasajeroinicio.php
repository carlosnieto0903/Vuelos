<?php
	session_start();
	include ("../src/php/conexion.php");

	$id= $_SESSION["id"];

	$sql= " SELECT nombre, usuario, pais, ciudad, numTelf, direccion, codigopostal 
			FROM pasajero
			WHERE id ='".$id."'";

	$resultado= $conn->query($sql);

    while($data=$resultado->fetch_assoc()){
       $nombre= $data['nombre'];
       $usuario= $data['usuario'];
       $pais= $data['pais'];
       $ciudad= $data['ciudad'];
       $numTelf= $data['numTelf'];
       $direccion= $data['direccion'];
       $codigopostal= $data['codigopostal'];
    }
?>

<!DOCTYPE html>
<html>
<head>
	<title>Inicio Pasajero</title>
	<link rel="stylesheet" type="text/css" href="../src/style.css">
	<link rel="shorcut icon" type="text/css" href="src/img/naranja.ico">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>		
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<script src="../src/js/jquery.flexslider.js"></script>
	<script src="../src/js/jquery.flexslider.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(window).load(function() {
		  $('.flexslider').flexslider({
		  touch: true,
		  pauseOnAction: false,
		  pauseOnHover: false,
	  });
	});
  </script>
</head>
<body>
	<font face="Comic Sans MS" size="4">
	<center>
		<div id ="Contenedor">
			<div id="Portal">
				<style type="text/css">
					#Portal{
						background-color: #EC5772;
					}
				</style>
				<font face="Comic Sans MS" size="6"><h1>RESERVA VUELOS</h1></div></font>
			<div id="Menu">
				<ul>
						<style type="text/css">
							#Menu ul li a{
								text-decoration: none;
								color: #EC5772;
							}
							#Menu ul li a:hover{
								background-color: #EC5772;
								color: #44535C;
							}
						</style>
					<li><a href="usuario/vuelos.php">CONSULTA VUELOS</a>
					<li><a href="usuario/reserva.php">VER RESERVAS</li>
					<li><a href="usuario/ticket.php">COMPRA DE TICKETES</li>
				</ul>
			</div>
			<div id="Categoria">
				<style>
					input{
						width: 40%;
					}
					.uno{
						height: 95%;
					}
					.e1{
						width: 90%;
						height: 430px;
						margin-left: 5%;
						margin-bottom: 4%;
						margin-top: 4%;
					}
				</style>
				<div id="uno">
					<div class="e1">
						<font face="Comic Sans MS" size="8"><h4>DATOS PASAJERO</h4></font>
						<font face="Comic Sans MS" size="6">
							Nombre: <?php echo $nombre; ?><br>
							Usuario: <?php echo $usuario; ?><br>
							Pais: <?php echo $pais; ?><br>
							Ciudad: <?php echo $ciudad; ?><br>
							Telefono: <?php echo $numTelf; ?><br>
							Direccion: <?php echo $direccion; ?><br>
							Codigo Postal: <?php echo $codigopostal; ?><br>
							Bienvenid@
						</font>							
					</div>									
				</div>
				<div id="dos">
					<?php
                        $sql1="SELECT Count(*) tickets FROM ticket WHERE idp=$id";
                        $resultado1= $conn->query($sql1);
                        $cantidad1= $resultado1-> fetch_assoc();
                    ?>
					<font face="Comic Sans MS" size="6" color="green" align="center">
						<b>BIENVENID@</b><br>
						<?php echo $usuario; ?><br><hr><br>
					<font face="Comic Sans MS" size="5" color="black" align="center">
					<img src="../src/img/ticket.png" width="25%" height="17%" align="left">
						USTED TIENE:<br>
					<font color="blue">
						<?php echo $cantidad1['tickets']?>
						TICKETES</font><br><br>
					
					<style type="text/css">
						input[type="submit"]{
							color: #D29224;
							margin-left: auto;
							margin-right: auto;
							margin-bottom: 5px;
						}
					</style>
					<form action="../inicio.html" method="post">
						<input type="submit" value="CERRAR SESION">
					</form>


					</font>
				</div>
			</div>
			</div>
	</center>
	</font>
</body>
</html>