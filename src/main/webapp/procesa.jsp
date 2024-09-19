<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resumen de la Reserva</title>
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
    <h1 class="text-center">Resumen de la Solicitud de Reserva</h1>

    <!-- Procesa datos del formulario -->
    <%
        // Obtener los parámetros del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String medioPago = request.getParameter("medio_pago");
        String dias = request.getParameter("dias");
        String fechaEntrada = request.getParameter("fecha_entrada");
        String idHabitacion = request.getParameter("idhabitacion");

        // Determinar el nombre de la habitación y el precio por día
        String habitacion = "";
        int precioPorDia = 0;
        if ("1".equals(idHabitacion)) {
            habitacion = "Suite de lujo";
            precioPorDia = 80000;
        } else if ("2".equals(idHabitacion)) {
            habitacion = "Estándar";
            precioPorDia = 40000;
        }

        // Calcular el valor total a pagar
        int valorAPagar = precioPorDia * Integer.parseInt(dias);
    %>

    <!-- Mostrar la información procesada -->
    <div class="card">
        <div class="card-header">
            Detalles de la Reserva
        </div>
        <div class="card-body">
            <p><strong>Nombre: </strong><%= nombre %></p>
            <p><strong>Apellido: </strong><%= apellido %></p>
            <p><strong>Email: </strong><%= email %></p>
            <p><strong>Medio de Pago: </strong><%= medioPago %></p>
            <p><strong>Habitación Seleccionada: </strong><%= habitacion %></p>
            <p><strong>Días de Estancia: </strong><%= dias %></p>
            <p><strong>Fecha de Entrada: </strong><%= fechaEntrada %></p>
            <p><strong>Valor Total a Pagar: </strong>$<%= valorAPagar %></p>
        </div>
    </div>

    <div class="text-center mt-4">
        <a href="index.jsp" class="btn btn-primary">Volver al Formulario</a>
    </div>
</div>

<!-- Footer -->
<jsp:include page="assets/html/footer.jsp"/>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AgiA2LvTqjamPlg9eM0p5myWC0I6TB6pBG9uwv/ltlmycrjU2BYwFMzA2iwp" crossorigin="anonymous"></script>
</body>
</html>