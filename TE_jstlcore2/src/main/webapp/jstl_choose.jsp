
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL choose</title>
    </head>
    <body>
        <h1>ejemplo del choose</h1>
         <p>para visualizar el texto condiciones necesita agregar un parametroe en la barra de direcciones A, S, I ej. ?estado=A</p>
    <c:choose>
        <c:when test="${param.estado == 'A'}">
        <h4 style="color: blue">ATIVO</h4>
        </c:when>
        <c:when test="${param.estado == 'S'}">
        <h4 style="color: red">Suspendido</h4>
        </c:when>
        <c:when test="${param.estado == 'I'}">
        <h4 style="color: green">Inactivo</h4>
        </c:when>
        <c:otherwise>
            <p>****Sin estado****</p>
        </c:otherwise>
    </c:choose> 
        <a href="index.jsp">Volver</a>
    </body>

     </html>   