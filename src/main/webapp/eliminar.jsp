<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--*************** MUY IMPORTANTE *********** -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- ***************************************** -->
    
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Borrado</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<link rel="icon" href="<c:url value="img/favicon.png"></c:url>">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@500&display=swap" rel="stylesheet">
	<style>
	*{
	font-family: 'Rajdhani', sans-serif;
	}
	
	</style>


</head>

<body>
<div class="container pt-4" >
<form action="Controller" method="post" class="form-control"  >
<h1>Borrado de productos</h1>
<p>Escriba el id del producto que quiere eliminar</p>

<div class="row">
<div class="col-3">

<label for="id"></label>
<input type="number" name="id" class="form-control">
</div>
</div>

<div class="row pt-2">
<div class="col-2">
<input type="submit" name="enviar" value="Eliminar producto">
</div>
</div>

</form>
</div>

</body>
</html>