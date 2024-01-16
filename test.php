<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .background-pattern {
            position: fixed;
            top: 0;
            left: 0;
            width: 200%;
            height: 200%;
            pointer-events: none;
            background: linear-gradient(to top right, #3498db, #ffffff);
            opacity: 1; /* Ajusta la opacidad según tus preferencias */
            animation: moveGradient 0.5s linear infinite; /* Ajusta la duración para hacerla más rápida */
        }

        @keyframes moveGradient {
            0% {
                background-position: 0% 0%;
            }
            100% {
                background-position: 200% 200%;
            }
        }

        .content {
            text-align: center;
            color: #333; /* Cambiado a un gris más oscuro para contrastar con el fondo más claro */
            z-index: 1;
        }

        h1 {
            font-size: 3em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="background-pattern"></div>
    <div class="content">
        <h1>Sistema de Asistencia</h1>
        <p>Bienvenido al sistema de asistencia. ¡Registra tu presencia de manera fácil y eficiente!</p>
    </div>
</body>
</html>
