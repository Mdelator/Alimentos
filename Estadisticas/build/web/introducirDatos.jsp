<%-- 
    Document   : introducirDatos
    Created on : 21-feb-2017, 23:52:54
    Author     : jose
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="muestra" class="datos.Muestra" scope="application"/>

<c:if test="${!empty param.nombre}">
    <jsp:useBean id="persona" class="datos.Persona"/>
    <c:set target="${persona}" property="nombre" value="${param.nombre}"/>
    <c:set target="${persona}" property="apellidos" value="${param.apellidos}"/>
    <fmt:parseDate pattern="yy-MM-dd" var="fechaNacimiento" value="${param.fechaNacimiento}"/>
    <c:set target="${persona}" property="fechaNacimiento" value="${fechaNacimiento}"/>
    <c:set target="${persona}" property="sexo" value="${param.sexo}"/>
    <fmt:parseNumber type="number" var="salario" value="${param.salario}"/>
    <c:set target="${persona}" property="salario" value="${salario}"/>
    ${muestra.add(persona)}
    <c:redirect url="index.html"/>
</c:if>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos/general.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
                <%--$("#format").on("change", function () {--%>
                    <%--$("#datepicker").datepicker("option", "dateFormat", $(this).val());
                    Para que salga directamente en este formato:--%>
                    $("#datepicker").datepicker("option", "dateFormat", "yy-mm-dd");
                <%--});--%>
            });
        </script>
    </head>
    <body>
        <div class="centrado">
            <br>
            <br>
            <h1>Introducir Datos</h1>
            <br>
        </div>
        <div class="formulario">
            <form>
                <table>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="nombre"></td>
                    </tr>
                    <tr>
                        <td>Apellidos</td>
                        <td><input type="text" name="apellidos"></td>
                    </tr>
                    <tr>
                        <td>Fecha de Nacimiento</td>
                        <%--<td><input type="date" name="fechaNacimiento" placeholder="aa-mm-dd"></td>
                        Le ponemos en type el valor de text para que en Chrome no me salga dos veces
                        el calendario--%>
                        <td><input id="datepicker" type="text" name="fechaNacimiento" placeholder="aa-mm-dd"></td>
                    </tr>
                    <tr>
                        <td>Sexo</td>
                        <td>
                            <select name="sexo">
                                <option>Hombre</option>
                                <option>Mujer</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Salario</td>
                        <td><input type="text" name="salario"></td>
                    </tr>
                    <%--
                    <tr>
                        <td>Estatura</td>
                        <td><input type="text" name="estatura"></td>
                    </tr>
                    <tr>
                        <td>Peso</td>
                        <td><input type="text" name="peso"></td>
                    </tr>
                    --%>
                    <tr>
                        <td></td><td><input type="submit" value="Aceptar"></td>
                    </tr>
                </table>    
            </form>
        </div>
    </body>
</html>
