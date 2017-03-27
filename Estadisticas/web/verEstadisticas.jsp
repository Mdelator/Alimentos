<%-- 
    Document   : verEstadisticas
    Created on : 22-feb-2017, 0:45:06
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
            <h1>Estadísticas</h1>
            <br>
        </div>
        <div class="contenido">
            <table>
                <tr class="encabezado"><td>Salario medio</td><td>Nº Hombres</td><td>Nº Mujeres</td><td>% Hombres</td><td>% Mujeres</td><td>Edad media</td></tr>
                <tr>
                    <td><fmt:formatNumber type="currency" value="${muestra.salarioMedio}" /></td>
                    <td>${muestra.numeroHombres}</td>
                    <td>${muestra.numeroMujeres}</td>
                    <td><fmt:formatNumber type="percent" value="${muestra.porcentajeHombres}"/></td>
                    <td><fmt:formatNumber type="percent" value="${muestra.porcentajeMujeres}"/></td>
                    <td><fmt:formatNumber type="number" maxFractionDigits="1" value="${muestra.edadMedia}"/></td>
                </tr>
            </table>
        </div>
        <br>
        <div class="centrado">
            <a href="index.html">Volver</a>
        </div>
    </body>
</html>
