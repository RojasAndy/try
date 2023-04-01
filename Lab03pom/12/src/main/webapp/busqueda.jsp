<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Busqueda</title>
</head>
<body>
<h3>Busqueda por Nombre y apellido</h3>
<form action="busqueda1.jsp" method=post>
  <input type="text" name="noml" placeholder="Ingrese sus nombres"><br><br>
  <input type="text" name="apel" placeholder="Ingrese sus apellidos"><br><br><br>
  <input type="submit" value="Buscar">
  <input type="reset" value="Limpiar">
  <br><br>
<%@ include file="pie.jsp" %>
</form>
</body>
</html>