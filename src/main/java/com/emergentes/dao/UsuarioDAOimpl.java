package com.emergentes.dao;

import com.emergentes.modelo.Usuario;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAOimpl extends ConexionDB implements UsuarioDAO {

    @Override
    public void insert(Usuario usr) throws Exception {
        this.conectar();
        String sql = "INSERT INTO usuario (nombres, apellidos, correo, password) values (?, ?, ?, md5(?))";
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, usr.getNombres());
        ps.setString(2, usr.getApellidos());
        ps.setString(3, usr.getCorreo());
        ps.setString(4, usr.getPassword());
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void update(Usuario usr) throws Exception {
        this.conectar();
        String sql = "UPDATE usuario SET nombres = ?, apellidos = ?, correo = ?, password = md5(?) WHERE id = ?";
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, usr.getNombres());
        ps.setString(2, usr.getApellidos());
        ps.setString(3, usr.getCorreo());
        ps.setString(4, usr.getPassword());
        ps.setInt(5, usr.getId());
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void delete(int id) throws Exception {
        this.conectar();
        String sql = "DELETE FROM usuario WHERE id = ?";
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public Usuario getById(int id) throws Exception {
        Usuario usr = new Usuario();
        this.conectar();
        String sql = "SELECT * FROM usuario WHERE id = ?";
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            usr.setId(rs.getInt("id"));
            usr.setNombres(rs.getString("nombres"));
            usr.setApellidos(rs.getString("apellidos"));
            usr.setCorreo(rs.getString("correo"));
            //Aqui seria inecesario obtener el password 
        }
        this.desconectar();
        return usr;
    }

    @Override
    public List<Usuario> getAll() throws Exception {
        List<Usuario> lista = null;
        this.conectar();
        String sql = "SELECT * FROM USUARIO";
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        lista = new ArrayList<Usuario>();
        while (rs.next()) {
            Usuario usr = new Usuario();
            usr.setId(rs.getInt("id"));
            usr.setNombres(rs.getString("nombres"));
            usr.setApellidos(rs.getString("apellidos"));
            usr.setCorreo(rs.getString("correo"));
            lista.add(usr);
        }
        //rs.close();
        //ps.close();
        this.desconectar();
        return lista;
    }
}
