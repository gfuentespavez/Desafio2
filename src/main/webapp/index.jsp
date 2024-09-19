<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva de Habitaciones</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="assets/css/styles.css" rel="stylesheet">
    <!--Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>

<!-- Header -->
<jsp:include page="assets/html/header.jsp"/>

<div class="container my-5">
    <h1 class="text-center mb-4">Formulario de Reserva</h1>

    <!-- Formulario de Reserva -->
    <form method="post" action="procesa.jsp">
        <!-- Selección de Habitación -->
        <div class="mb-3">
            <label for="idhabitacion" class="form-label">Seleccione Habitación:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="1" id="habitacion1" required>
                <label class="form-check-label" for="habitacion1">
                    Habitación 1 - Suite de lujo
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="2" id="habitacion2" required>
                <label class="form-check-label" for="habitacion2">
                    Habitación 2 - Estándar
                </label>
            </div>
        </div>

        <!-- Nombre -->
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre:</label>
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese su nombre" required>
        </div>

        <!-- Apellido -->
        <div class="mb-3">
            <label for="apellido" class="form-label">Apellido:</label>
            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Ingrese su apellido" required>
        </div>

        <!-- Email -->
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Ingrese su email" required>
        </div>

        <!-- Medio de Pago -->
        <div class="mb-3">
            <label for="medio_pago" class="form-label">Medio de Pago:</label>
            <select id="medio_pago" name="medio_pago" class="form-select" required>
                <option value="contado">Contado</option>
                <option value="tarjeta">Tarjeta</option>
            </select>
        </div>

        <!-- Días -->
        <div class="mb-3">
            <label for="dias" class="form-label">Días de Estancia:</label>
            <input type="number" class="form-control" id="dias" name="dias" placeholder="Ingrese la cantidad de días" required min="1">
        </div>

        <!-- Fecha de Entrada -->
        <div class="mb-3">
            <label for="fecha_entrada" class="form-label">Fecha de Entrada:</label>
            <input type="date" class="form-control" id="fecha_entrada" name="fecha_entrada" required>
        </div>

        <!-- Botón de Envío -->
        <button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
    </form>
</div>

<!-- Footer -->
<jsp:include page="assets/html/footer.jsp"/>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script></body>
</html>
