package com.emergentes.controlador;

import com.emergentes.utiles.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginnControlador", urlPatterns = {"/LoginnControlador"})
public class LoginnControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        action = (request.getParameter("action") == null) ? "view" : request.getParameter("action");
        if (action.equals("logout")) {
            HttpSession ses = request.getSession();
            ses.invalidate();
        }

        response.sendRedirect("loginn.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //Recibimos los datos que estan viniendo desde loginn.jsp
            String correo = request.getParameter("correo");
            String password = request.getParameter("password");
            String sql = "select * from usuario where correo = ? and password = md5(?)";
            ResultSet rs;
            //Creamos un canal de conexion
            ConexionDB canal = new ConexionDB();
            Connection cn = canal.conectar();
            //Para tener una sentencia preparada
            PreparedStatement ps = cn.prepareStatement(sql);
            //La sentencia sql tiene 2 parametros debemos adicionar 2 parametros
            ps.setString(1, correo);
            ps.setString(2, password);
            /*Ahora lo que debemos hacer es ejecutar la consulta con executeQuery
            pero esta necesita devolver los resultados en un ResultSet*/
            rs = ps.executeQuery();
            //Debemos verificar 
            if (rs.next()) {
                //Crear las variables de sesion para el uso en la aplicacion
                HttpSession ses = request.getSession();

                ses.setAttribute("logueado", "OK");
                ses.setAttribute("usuario", rs.getString("nombres") + " " + rs.getString("apellidos"));
                response.sendRedirect("ClienteControlador");
            } else {
                response.sendRedirect("loginn.jsp");
            }

        } catch (SQLException ex) {
            System.out.println("Error al conectar a la base de datos " + ex.getMessage());
        }
    }
}
