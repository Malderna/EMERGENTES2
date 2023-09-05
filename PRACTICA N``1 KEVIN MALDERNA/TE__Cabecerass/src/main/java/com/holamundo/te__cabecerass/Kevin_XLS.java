
package com.holamundo.te__cabecerass;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RespXLS", urlPatterns = {"/RespXLS"})
public class Kevin_XLS extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/vn.ms-excel");
        response.setHeader("Content-Disposition","attachment;filename=archivo.xls");
        PrintWriter out= response.getWriter();
        try{
        out.println("SUMA DE NUMEROS EN Excel");
        out.println("10");
        out.println("20");
        out.println("La suma es:\t");
        out.println("=suma(a2:a3)");
        }finally{
        out.close();
        }
    }
   

}
