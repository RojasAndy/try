<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="datos.trabajandoDatabase" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Listado</title>
</head>
<body>
<h3>Mostrar a los empleados</h3>
<%
  trabajandoDatabase tr = new trabajandoDatabase();
  ResultSet stc = tr.consulta("select * from empleados");
%>
<table id="emple">
        <tr>
           <th>Código</th> 
           <th>Apellidos</th>
           <th>Nombres</th>
           <th>Sexo</th>
           <th>Ocupación</th>
           <th>AFP</th>
        </tr>
     <%
        while(stc.next()){
     %>	
        <tr>
            <td><%=stc.getInt(1)%></td>
            <td><%=stc.getString(2)%></td>
            <td><%=stc.getString(3)%></td>
            <td><%=stc.getString(4)%></td>
            <td><%=stc.getString(5)%></td>
            <td><%=stc.getString(6)%></td>
     <%}%>
</table>
<br><br>
<%@ include file="pie.jsp" %>
</body>
</html>