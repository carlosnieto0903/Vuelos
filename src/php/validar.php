<?php
	include ('conexion.php');
	session_start();
	$idv= $_POST['id'];
    $id= $_SESSION['id'];

	$sqltar="SELECT * FROM tarjeta WHERE idPasajero=$id";
    $resultadotar= $conn->query($sqltar);
    $cantidadtar= $resultadotar-> fetch_assoc();
	$ntar= $cantidadtar['numero'];

	if ($conn->connect_error ){
		die("La conexion fallo:".$conn->connect_error);
	}else{
		$sql="INSERT INTO reserva VALUES ($ntar ,$id )";
		$resultado=$conn->query($sql);
		if ($resultado) {
			echo "<script>alert('Reservado el vuelo!');
			location.href='../../pags/usuario/reserva.php';
			</script>";			
		}
	}
	mysqli_close($conn);
?>