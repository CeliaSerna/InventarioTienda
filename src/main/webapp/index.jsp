<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--*************** MUY IMPORTANTE *********** -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- ***************************************** -->
    
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Inventario</title>
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
<h1>Registro de productos</h1>
<div class="row">

<div class="col-3">
<label for="nombre" class="label-group"></label>
<input type="text" name="nombre" required class="form-control" placeholder="Nombre"
maxlength="20" value="${param.nombre}">
</div>

<div class="col-7">
<label for="descripcion" class="label-group"></label>
<textarea  name="descripcion"  class="form-control" placeholder="Descripción" 
rows="1"  maxlength="100" value="${param.descripcion}"></textarea> 

</div>

<div class="col-2">
<label for="cantidad" class="label-group"></label>
<input type="number" name="cantidad" required class="form-control" placeholder="Cantidad"
value="${param.cantidad}">
</div>

</div>

<div class="row pt-2">
<div class="col-2">
<input type="submit" name="enviar" value="Registrar producto">
</div>
</div>

</form>
</div>

<div class="container pt-4">
	<c:if test="${not empty mensaje}">
	
	<c:out value="${mensaje}" ></c:out>
	
	</c:if>
</div>
<div class="container pt-4">
	
<c:if test="${not empty producto}">
	<table class="table table-striped">
	
	<tr>
	<th>Id del producto</th>
	<th>Nombre del producto</th>
	<th>Descripción del producto</th>
	<th>Cantidad del producto</th>
	
	<th>Acciones</th>
	</tr>
	
	<c:forEach items="${producto}" var="productos">
	<tr>
	<td><c:out value="${productos.idProducto}"></c:out></td>  
 	<td><c:out value="${productos.nombre}"></c:out></td>
	<td><c:out value="${productos.descripcion}"></c:out></td>
	<td><c:out value="${productos.cantidad}"></c:out></td>
	<td>
		<a href="Controller?idp=${productos.idProducto}&opcion=editar&nombre=${productos.nombre}&
		descripcion=${productos.descripcion}&cantidad=${productos.cantidad}" >Editar   &#9998;  </a>
		<a href="eliminar.jsp">Eliminar &#128465;</a>		
	</td>
	
	</tr>
	</c:forEach>
	
	
	</table>
	
	</c:if>
</div>


</body>
</html>