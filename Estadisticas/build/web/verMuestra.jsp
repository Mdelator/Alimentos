<%-- 
    Document   : verMuestra
    Created on : 22-feb-2017, 0:44:50
    Author     : jose
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Estadísticos</title>
        <link rel="stylesheet" href="estilos/general.css">
    </head>
    <body>
        <div class="centrado">
            <br>
            <h1>Datos de la muestra</h1>
            <br>
        </div>
        <div class="contenido">
            <table>
                <tr class="encabezado"><td>Apellidos</td><td>Nombre</td><td>Fecha de Nacimiento</td><td>Edad</td><td>Sexo</td><td>Salario</td></tr>
                <c:forEach var="p" items="${muestra.personas}">
                    <tr>
                        <td>${p.apellidos}</td>
                        <td>${p.nombre}</td>
                        <td class="derecha"><fmt:formatDate type="date" dateStyle="short" value="${p.fechaNacimiento}"/></td>
                        <td class="derecha">${p.edad}</td>
                        <td>${p.sexo}</td>
                        <td class="derecha"><fmt:formatNumber type="currency" value="${p.salario}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <br>
        <div class="centrado">
            <a href="index.html">Volver</a>
        </div>
    </body>
</html>
