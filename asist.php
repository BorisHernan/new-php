<?php

include('c.php');

// Verifica que la solicitud sea de tipo POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtiene los datos de la solicitud AJAX
    $idalum = $_POST['idalum'];
    $asis = $_POST['asis'];

    // Realiza la inserción en la base de datos
    $insertar = mysqli_query($conexion, "INSERT INTO asistenciaE (idalum, asis) VALUES ('$idalum', '$asis')");

    if ($insertar) {
        // Envía una respuesta al cliente
        echo json_encode(['success' => true, 'message' => 'Asistencia Registrada']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error al registrar la asistencia']);
    }
}

?>
