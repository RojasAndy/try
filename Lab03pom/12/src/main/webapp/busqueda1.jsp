<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="datos.trabajandoDatabase" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Insert title here</title>
</head>
<body>
<%
  String nomb = request.getParameter("noml");
  String apeb = request.getParameter("apel");
  trabajandoDatabase bsq = new trabajandoDatabase();
  ResultSet stb = bsq.consulta("select * from empleados where nombres='"+nomb+"' and apellidos='"+apeb+"' ");
%>
<h3>Buscando empleado</h3>
<table id="emple">
        <tr>
           <th>Código</th> 
           <th>Apellidos</th>
           <th>Nombres</th>
           <th>Sexo</th>
           <th>Ocupación</th>
           <th>AFP</th>
        </tr>
<%while(stb.next()) {%>
	<tr>
	     <td><%=stb.getInt(1)%></td>
	     <td><%=stb.getString(2)%></td>
	     <td><%=stb.getString(3)%></td>
	     <td><%=stb.getString(4)%></td>
	     <td><%=stb.getString(5)%></td>
	     <td><%=stb.getString(6)%></td>
	</tr>
<%} %>
</table>
<br><br>
<a href="busqueda.jsp">Buscar otro empleado</a>
<br><br>
<%@ include file="pie.jsp" %>
</body>
</html>