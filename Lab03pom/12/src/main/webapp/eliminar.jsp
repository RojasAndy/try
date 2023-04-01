<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="datos.trabajandoDatabase" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.swing.*"%>
    <%@ page import="java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Eliminar</title>
</head>
<body>
<h3>Eliminar el empleado</h3>
<form action="eliminar.jsp" method=post>
<input type="text" name="idh" placeholder="Ingrese el ID del empleado"><br><br><br>
<input type="submit" value="Eliminar">
<%
          try{
              int codxs = Integer.parseInt(request.getParameter("idh"));
              if (codxs > 0){
			  		trabajandoDatabase q = new trabajandoDatabase();
			  		boolean mm = q.eliminar(codxs);
			  		response.sendRedirect("listado.jsp");
			  }
		  }catch(NumberFormatException e7){
			  JOptionPane.showMessageDialog(null,"Error en el n'umero "+e7);
		  } 
%>
</form>
<br><br>
<%@ include file="pie.jsp" %>
</body>
</html>