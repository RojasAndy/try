<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="datos.trabajandoDatabase"%>
    <%@ page import="javax.swing.JOptionPane" %>
<!DOCTYPE html>
<html>
<head>     
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Registrar1</title>
</head>
<body>
<h3>Registrando empleados</h3>
<%

  try{
	  int codg = Integer.parseInt(request.getParameter("codx"));
	  String apeg=request.getParameter("apex");
	  String nomg=request.getParameter("nomx");
	  String sexg=request.getParameter("sexx");
	  String ocug=request.getParameter("ocux");
	  String afpg=request.getParameter("afpx"); 
	  trabajandoDatabase cl = new trabajandoDatabase();
	  boolean y = cl.registrar(codg, apeg, nomg, sexg, ocug, afpg);
	  if(y==true){
		  %>
		      <b>Empleado registrado correctamente</b>
		   <%}else{ %>
		         <b>Error al registrar empleado</b>
		     <%}  
	  }catch(NumberFormatException e6){
	  JOptionPane.showMessageDialog(null,"Error en el formato" +e6);
  }


%>
<br><br>
<a href="registro.jsp">Registrar otro empleado</a>
<br><br>
<%@ include file="pie.jsp" %>
</body>
</html>