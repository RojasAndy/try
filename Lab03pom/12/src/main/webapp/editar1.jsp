<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="datos.trabajandoDatabase" %>
    <%@ page import="javax.swing.JOptionPane" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Editando Empleado</title>
</head>
<body>
<%
  try{
	  int idxr = Integer.parseInt(request.getParameter("ide"));
	  String apexr = request.getParameter("apee");
	  String nomxr = request.getParameter("nome");
	  String sexxr = request.getParameter("sexe");
	  String ocuxr = request.getParameter("ocue");
	  String afpxr = request.getParameter("afpe");
	  trabajandoDatabase editg = new trabajandoDatabase();
	  boolean z = editg.editar(idxr, apexr, nomxr, sexxr, ocuxr, afpxr);
	  if(z==true){
		  %>
		    <b>Empleado editado correctamente</b>
		  <%}else{ %>
		       <b>Error al editar</b>
	       <%} 
	  }catch(NumberFormatException e8){
	  JOptionPane.showMessageDialog(null, "Error num'erico" + e8);
     }
%>
<br><br>
<a href="editar.jsp">Editar otro empleado</a>
<br><br>
<%@ include file="pie.jsp" %>
</body>
</html>