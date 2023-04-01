<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Editar</title>
</head>
<body>
<h3>Editar Empleados</h3>
<form action="editar1.jsp" method=post>
<input type="text" name="ide" placeholder="Ingresa el ID del empleado"><br><br>
<input type="text" name="apee" placeholder="Ingresa los nuevos Apellidos del empleado"><br><br>
<input type="text" name="nome" placeholder="Ingresa los nuevos Nombres del empleado"><br><br>
<input type="text" name="sexe" placeholder="Ingresa el nuevo sexo del empleado"><br><br>
<input type="text" name="ocue" placeholder="Ingresa la nueva ocupaci'on del empleado"><br><br>
<input type="text" name="afpe" placeholder="Ingresa el nuevo afp del empleado"><br><br><br>
<input type="submit" value="Editar">
<input type="reset" value="Limpiar">
<br><br>
<%@ include file="pie.jsp" %>
</form>
</body>
</html>