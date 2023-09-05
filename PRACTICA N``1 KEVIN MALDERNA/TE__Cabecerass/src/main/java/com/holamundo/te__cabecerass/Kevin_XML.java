
package com.holamundo.te__cabecerass;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RespXML", urlPatterns = {"/RespXML"})
public class Kevin_XML extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/XML");
        PrintWriter out=response.getWriter();
        try{
            out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        out.println("<CATALOGO>");           
        out.println("<CD>");           
        out.println("<TITULO>Tinta</TITULO>");           
        out.println("<ARTISTA>Andres Calamaro</ARTISTA>");           
        out.println("<ORIGEN>BOLIVIA</ORIGEN>");  
        out.println("<PRECIO>10 BS</PRECIO>");  
        out.println("<AñO>2006</AñO>");  
        out.println("</CD>");  
        out.println("<CD>");  
        out.println("<TITULO>La lengua popular Y ORIGINARIO</TITULO>");           
        out.println("<ARTISTA>Andres Calamaro</ARTISTA>");           
        out.println("<ORIGEN>BOLIVIA</ORIGEN>");    
        out.println("</CD>");  
        out.println("</CATALOGO>");           
      
        }
        finally{
        out.close();
        }
        
        
    }

  
    

}
