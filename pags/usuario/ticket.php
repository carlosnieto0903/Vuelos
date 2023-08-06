<?php
    include('../../src/php/conexion.php');
	session_start();
	$id= $_SESSION['id'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<title>Tickets</title>
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
							background-color: #F59017;
						}
					</style>
					<font face="Comic Sans MS" size="6"><h1>COMPRA DE TICKETS</h1></div></font>
				<div id="Menu">
					<ul>
							<style type="text/css">
								#Menu ul li a{
									text-decoration: none;
									color: #F9B86B;
								}
								#Menu ul li a:hover{
									background-color: #F9B86B;
									color: #44535C;
								}
							</style>
							<li><a href="vuelos.php">VER VUELOS</a></li>
							<li><a href="../pasajeroinicio.php">REGRESAR</a></li>
					</ul>
				</div>
                <style type="text/css">
					#Catalogo{
						margin: auto;
						width: 98%;
						height: 613%;
						margin-top: 15px;
					}
					#uno{
						width: 60%;
						height: 500px;
					}
                    #dos{
                        width: 35%;
                        height:400px;
                    }
                    .e1{
						width: 80%;
						height: 65%;
						margin: 5%;
						background-color:#FFFFFF; 
					}
					.e2{
						width: 85%;
						height: 85%;
                        margin:5%;
						background-color:#FFFFFF; 
					}
					input{
						font-size: 20px;
					}
					input[type="submit"]{
						color: #6BF9C5;
					}
				</style>
				<div id="Catalogo">                    
					<div id="uno">
                        <?php
                            $sql="SELECT Count(*) tickets FROM ticket WHERE idp=$id";
                            $resultado= $conn->query($sql);
                            $cantidad= $resultado-> fetch_assoc();
                        ?>						
                        <div class="e1">
                            <img src="../../src/img/ticket.png" width="65%" height="95%" align="center">
                        </div>
                        <font face="Comic Sans MS" size="5">
                            Actualmente tiene 
                            <?php echo $cantidad['tickets'] ?>
                            Tickets
                        </font>
						
					</div>
                    <div id="dos">
						<?php
                            $sql1="SELECT * FROM tarjeta WHERE idPasajero=$id";
                            $resultado1= $conn->query($sql1);
                            $cantidad1= $resultado1-> fetch_assoc();
                        ?>
                        <div class="e2">
                            <font face="Comic Sans MS" size="5">						
                                TARJETA DEBITO <br></font><br>
							<img src="../../src/img/tarjeta.png" width="45%" height="45%"><br>
                            Num Tarjeta: <?php echo $cantidad1['numero'] ?> <br>
                            F. Venc: <?php echo $cantidad1['fechVenc'] ?> <br>
                            CVC: 510 <br><br>
							<form action="../../src/php/comprarticket.php" method="POST">
								<input type="submit" value="COMPRAR TICKET">
							</form>
						</div>
                    </div>
				</div>	
			</div>
		</center>
	</font>
</body>
</html>