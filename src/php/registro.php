<?php
	include ('conexion.php');
	$usuario=$_POST["usuario"];
    $correo=$_POST["email"];
	$contra=$_POST["contra"];
	$nusuario=$_POST["nombre"];
	$pais=$_POST["pais"];
    $ciudad=$_POST["ciudad"];
	$telefono=$_POST["numTelf"];
	$direccion=$_POST["direccion"];
	$codigopostal=$_POST["codigopostal"];

	if ($conn->connect_error ){
		die("La conexion fallo:".$conn->connect_error);
	}
	$buscar="SELECT * FROM pasajero WHERE email='$correo'";
	$result=$conn->query($buscar);
	$contar=mysqli_num_rows($result);
		if ($contar>0) {
			echo "<script>alert('Usuario insertado exitosamente');</script>";
			echo "<a href='../../pags/ausuario.html'>";
		}
		else{
			$query="INSERT INTO pasajero VALUES(NULL,'$usuario','$contra','$nusuario','$pais','$ciudad','$direccion','$codigopostal','$telefono','$correo')";
			if ($conn->query($query)===TRUE) {
			echo "<script>alert('Usuario insertado exitosamente');
				location.href='../../pags/ausuario.html';
			</script>";
				# code...
			}
			else{
				echo "Error al crear usuario".$query."<br>".$conn->error;
			}
		}
		mysqli_close($conn);
?>