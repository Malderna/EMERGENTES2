

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL if</title>
    </head>
    <body>
        <h1>Mostrar secctores de forma condicional</h1>
        <p>para visualizar el texto condiciones necesita agregar un parametroe en la barra de direcciones ej. ?login =ok </p>
    <c:if test="${param.login == 'ok'}" var="resultado" scope="request"> 
        <p style="color:red;"> enviado es ok </p>
    </c:if>
        <a href="index.jsp">volver</a>
    </body>
</html>
