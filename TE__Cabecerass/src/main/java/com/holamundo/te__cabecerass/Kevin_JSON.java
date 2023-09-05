
package com.holamundo.te__cabecerass;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RespJSON", urlPatterns = {"/RespJSON"})
public class Kevin_JSON extends HttpServlet {

   
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
       // response.setHeader("Content-Disposition","attachment;filename=archivo.xls");
        PrintWriter out= response.getWriter();
        try{
        out.println("(\"empleados\":[");
        out.println("(\"nombre completo\":\"Jose Flores Diaz\"");
        out.println("(\"nombre completo\":\"Juan jose Mamani Paredes\"");
        out.println("(\"nombre completo\":\"Dolores Fuertes Ortis");
        out.println("])");     
        }finally{
        out.close();
        }
    }
}
