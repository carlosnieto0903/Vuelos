<?php
	include('../../src/php/conexion.php');
	session_start();
	$id= $_SESSION["id"];
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Vuelos</title>
		<link rel="stylesheet" type="text/css" href="../../src/style.css">
		<link rel="shorcut icon" type="text/css" href="">
	</head>
	<body >
		<font face="Comic Sans MS" size="4">
		<center>
			<div id="Contenedor">
				<div id="Portal">
					<style type="text/css">
						#Portal{
							background-color: #40CB66;
						}
					</style>
					<font face="Comic Sans MS" size="6"><h1>LISTA DE RESERVAS</h1></div></font>
				<div id="Menu">
					<?php
                        $sql1="SELECT Count(*) tickets FROM ticket WHERE idp=$id";
                        $resultado1= $conn->query($sql1);
                        $cantidad1= $resultado1-> fetch_assoc();
                    ?>
					<ul>
							<style type="text/css">
								#Menu ul li a{
									text-decoration: none;
									color: #40CB66;
								}
								#Menu ul li a:hover{
									background-color: #40CB66;
									color: #44535C;
								}
							</style>
							<li>TICKETS DISPONIBLES:
								<?php echo $cantidad1['tickets'] ?>
								TICKETS
							</li>
							<li><a href="ticket.php">ADQUIRIR TICKETS</a></li>
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
						<font size="6" color="#CA121D">
						<?php
							$sql="SELECT * FROM vuelo";
							$result= $conn->query($sql);
							
                        	$sql2="SELECT * FROM ticket";
                        	$resultado2= $conn->query($sql2);
                        	$cantidad2= $resultado2-> fetch_assoc();
                    
							while($mostrar=mysqli_fetch_array($result)){						
						?>
							<div id="e2">
								<img src="../../src/img/ticket.png" width="25%" height="35%" align="left">
								<b><?php echo $mostrar['origen'] ?> - <?php echo $mostrar['destino']?></b><br>
								<font size="4" color="#000000">
									Horarios: <?php echo $mostrar['salida']?> - <?php echo $mostrar['llegada']?><br>
									Aerolinea: <?php echo $mostrar['aerolinea']?><br>
									Precio: 
								</font>
								<font color="#E74B15" size="4">
									$ <?php echo $mostrar['tarifa']?> COP
								</font><br>
								<form action="../../src/php/validar.php" method="POST">
									<input type="submit" value="RESERVAR VUELO">
								</form>
							</div>
						<?php
							}
						?>
						</font>
						
					</div>
				</div>	
			</div>
		</center>
		</font>
	</body>
</html>