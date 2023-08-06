<?php
	include('../../src/php/conexion.php');
	session_start();
	$id= $_SESSION["id"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../../src/style.css">
	<link rel="shorcut icon" type="text/css" href="">
    <title>Lista Reservas</title>
</head>
<body >
		<center>
			<div id="Contenedor">
				<div id="Portal">
					<style type="text/css">
						#Portal{
							background-color: #DB1E63;
						}
					</style>
					<font face="Comic Sans MS" size="6"><h1>RESERVAS HECHAS</h1></div></font>
				<div id="Menu">					
					<ul>
							<style type="text/css">
								#Menu ul li a{
									text-decoration: none;
									color: #DB1E63;
								}
								#Menu ul li a:hover{
									background-color: #DB1E63;
									color: #44535C;
								}
							</style>
							<li><a href="../pasajeroinicio.php">REGRESAR</a></li>
					</ul>
				</div>
				<div id="Catalogo">
					<div id="uno">
						<style type="text/css">
							#Catalogo{
								margin: auto;
								width: 98%;
								height: 613%;
								margin-top: 15px;
							}
							#uno{
								width: 99%;
								height: 99%
							}
							#e2{
								width: 30.5%;
								height: 250px;
								margin: 5px;
								padding: 12px;
								background-color:#FFFFFF; 
							}
							input{
								font-size: 20px;
							}
							input[type="submit"]{
								color: #40CB66;
							}
						</style>
						<?php
							$sqltar="SELECT * FROM tarjeta WHERE idPasajero=$id";
                            $resultadotar= $conn->query($sqltar);
                            $cantidadtar= $resultadotar-> fetch_assoc();
	                        $ntar= $cantidadtar['numero'];

                            $sql="SELECT * FROM reserva WHERE codigoreserva=$ntar";
							$result= $conn->query($sql);

							while($mostrar=mysqli_fetch_array($result)){						
						?>
							<div id="e2">
								<img src="../../src/img/avion.jpg" width="45%" height="45%" align="left"><br><br>
								<font size="6" color="#000000">
                                    Numero de Vuelo: <?php echo $mostrar['numeroVuelo']?><br><br><br>
                                    Numero de Reserva: <?php echo $mostrar['codigoreserva']?><br>
                                </font>
							</div>
						<?php
							}
						?>	
					</div>
				</div>	
			</div>
		</center>
	
	</body>
</html>