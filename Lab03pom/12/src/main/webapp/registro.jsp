<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Registro</title>
</head>
<body>
<h3>Registrar empleados</h3>
<form action="registro1.jsp" method=post>
   <input type="number" name="codx" placeholder="Ingrese el código"><br><br>
   <input type="text" name="apex" placeholder="Ingrese los apellidos"><br><br>
   <input type="text" name="nomx" placeholder="Ingrese los nombres"><br><br><br>  
   <label for="sexx">Selecciona tu sexo </label><br><br>
   <select name="sexx" id="sexx">
     <option value="Prefiero no decirlo">Prefiero no decirlo</option>
     <option value="Femenino">Femenino</option>
     <option value="Masculino">Masculino</option>
     <option value="Alien">Alien</option>
   </select><br><br><br>
   <label for="ocux">Selecciona tu ocupación</label><br><br>
   <select name="ocux" id="ocux">
      <option value="Disenador UX/IX">Disenador UX/IX</option>
      <option value="Desarrollador Java">Desarrollador Java</option>
      <option value="Desarrollador Front-end">Desarrolladro Front-end</option>
      <option value="Desarrollador de Videojuegos">Desarrollador de Videojuegos</option>
   </select><br><br><br>
   <label for="afpx">Selecciona tu tipo de AFP</label><br><br>
   <select name="afpx" id="afpx">
      <option value="Tipo 0">Tipo 0</option>
      <option value="Tipo 1">Tipo 1</option>
      <option value="Tipo 2">Tipo 2</option>
   </select><br><br><br>
   <input type="submit" value="Registrar">
   <input type="reset" value="Limpiar">
   <br><br>
   <%@ include file="pie.jsp" %>
</form>
</body>
</html>