<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
    </head>
    <body>
        
        <%
            if (session.getAttribute("listaper") == null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
            lista.add(new Persona(1,"Kevin  Malderna","78969171","fredy@hotmail.com"));
            lista.add(new Persona(2,"Roger angel mamani","7896565","j.m.v@hotmail.com"));
            lista.add(new Persona(3,"Rodrigo Perez ","656569171","jhosn@hotmail.com"));
            // colocamos la lista como un atributo
            session.setAttribute("listaper", lista);
            }
        %>
            <h1>Ejemplos de JSTL Core</h1>
             <h1>NOMBRE:Kevin Malderna Aduviri</h1>
            <ul> 
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li> 
            <li><a href="jstl_choose.jsp">probando el choose</a></li> 
            <li><a href="jstl_foreach.jsp">Recordando la coleccion con forEach</a></li> 
            </ul>
    </body>
</html>
