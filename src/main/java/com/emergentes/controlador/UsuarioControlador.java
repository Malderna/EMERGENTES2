package com.emergentes.controlador;

import com.emergentes.dao.UsuarioDAO;
import com.emergentes.dao.UsuarioDAOimpl;
import com.emergentes.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UsuarioControlador", urlPatterns = {"/UsuarioControlador"})
public class UsuarioControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Usuario usr = new Usuario(); //Objeto vacio
            int id;
            UsuarioDAO dao = new UsuarioDAOimpl();
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
            switch (action) {
                case "add":
                    request.setAttribute("usuario", usr);
                    request.getRequestDispatcher("frmusuario.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    usr = dao.getById(id); //Recupera el objeto ya con todos los valores 
                    request.setAttribute("usuario", usr);
                    request.getRequestDispatcher("frmusuario.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("UsuarioControlador");
                    break;
                case "view":
                    //Obtener la lista de registros en una coleccion
                    List<Usuario> lista = dao.getAll();
                    request.setAttribute("usuario", lista);
                    request.getRequestDispatcher("usuario.jsp").forward(request, response);
                    break;
            }
        } catch (Exception ex) {
            System.out.println("Error " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//Recuperamos los valores que me han enviado desde el formulario todas en variables
        int id = Integer.parseInt(request.getParameter("id"));
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
//Creamos un objeto
        Usuario usr = new Usuario();
        /*En este caso es correcto pasarle el password por que desde el formulario 
va venir el texto que quiere que sea su password*/
        usr.setId(id);
        usr.setNombres(nombres);
        usr.setApellidos(apellidos);
        usr.setCorreo(correo);
        usr.setPassword(password);

        UsuarioDAO dao = new UsuarioDAOimpl();
        if (id == 0) {//Si el id = 0 significa que es nuevo registro
            try {
                //Nuevo registro
                dao.insert(usr);
            } catch (Exception ex) {
                System.out.println("Error al insertar " + ex.getMessage());
            }
        } else {
            try {
                //Edicion de registro
                dao.update(usr);
            } catch (Exception ex) {
                System.out.println("Error al editar " + ex.getMessage());
            }
        }
        response.sendRedirect("UsuarioControlador");
    }
}
