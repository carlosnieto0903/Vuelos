<?php
include ("conexion.php");
session_start();
	$correo=$_POST['correo'];
	$contra=$_POST['contra'];
	$_SESSION['email']=$correo;
	

	$consulta="SELECT * FROM pasajero WHERE email='$correo' and contra='$contra'";
	$resultado=mysqli_query($conn,$consulta);

	$filas=mysqli_num_rows($resultado);
	$dato= $resultado-> fetch_assoc();
	$_SESSION['id']= $dato['id'];
	if($filas>0){
		echo '<script languaje="javascript">alert("Bienvenido Pasajero")</script>';
		header("location:../../pags/pasajeroinicio.php");
	}
	else{
		echo "Error en la autentificacion";
	}
	mysqli_free_result($resultado);
	mysqli_close($conn);
?>