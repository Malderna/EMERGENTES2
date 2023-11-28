package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Validate extends ConexionDB {

    Connection con = this.conectar();
    PreparedStatement pr;

    public boolean checkUser(String email, String password) {
        boolean resultado = false;
        try {
            String sql = "select * from usuarios where email=? and password=sha1(?)";

            pr = con.prepareStatement(sql); //Preparamos la sentencia
            pr.setString(1,email);
            pr.setString(2,password);
            ResultSet rs = pr.executeQuery(); //Con esto estariamos sacando la consulta
            resultado = rs.next();
        } catch (SQLException ex) {
            System.out.println("" + "Error al autenticar");
        }
        return resultado;
    }
}
