<?php
	include ('conexion.php');
	session_start();
	$id= $_SESSION['id'];

	$sqltar="SELECT * FROM tarjeta WHERE idPasajero=$id";
    $resultadotar= $conn->query($sqltar);
    $cantidadtar= $resultadotar-> fetch_assoc();
	$ntar= $cantidadtar['numero'];

	if ($conn->connect_error ){
		die("La conexion fallo:".$conn->connect_error);
	}else{
		$sql="INSERT INTO ticket VALUES (NULL, $id, $ntar )";
		$resultado=$conn->query($sql);
		if ($resultado) {
			echo "<script>alert('Ticket Comprado!');
			location.href='../../pags/usuario/ticket.php';
			</script>";			
		}
	}
	mysqli_close($conn);
?>