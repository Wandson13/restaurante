package model.dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.usuario;

public class usuarioDAO {
    public void create(usuario p) {
        
        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO usuario (login,senha,tipo,nomeu,cpf,telefone,endereco)VALUES(?,?,?,?,?,?,?)");
            stmt.setString(1, p.getLogin());
            stmt.setString(2, p.getSenha());
            stmt.setString(3, p.getTipo());
            stmt.setString(4, p.getNomeu());
            stmt.setString(5, p.getCpf());
            stmt.setString(6, p.getTelefone());
            stmt.setString(7, p.getEndereco());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Usuario registrado com sucesso!");
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public List<usuario> read() {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<usuario> usuarios = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM usuario");
            rs = stmt.executeQuery();

            while (rs.next()) {

                usuario usuario = new usuario();

                usuario.setId(rs.getInt("id"));
                usuario.setLogin(rs.getString("login"));
                usuario.setTipo(rs.getString("tipo"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setNomeu(rs.getString("nomeu"));
                usuario.setCpf(rs.getString("cpf"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setEndereco(rs.getString("endereco"));
                usuarios.add(usuario);
            }

        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return usuarios;

    }
    
    public boolean checkLogin(String login, String senha) {

        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        boolean check = false;

        try {
            stmt = con.prepareStatement("SELECT * FROM usuario WHERE login = ? and senha = ?");
            stmt.setString(1, login);
            stmt.setString(2, senha);

            rs = stmt.executeQuery();

            if (rs.next()) {
                int b = rs.getInt("id");
                String c = rs.getString("tipo");
                
                auxiliarDAO dao = new auxiliarDAO();
                dao.create(b, c);
                
                check = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return check;

    }
    public void delete(usuario p) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM usuario WHERE id = ?");
            stmt.setInt(1, p.getId());      

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Excluido com sucesso!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir: " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public usuario readForId() {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;
        auxiliarDAO a = new auxiliarDAO();
        usuario usuario = new usuario();

        try {
            stmt = con.prepareStatement("SELECT * FROM usuario WHERE id LIKE ?");
            stmt.setString(1, "%"+a.readUId()+"%");
            
            rs = stmt.executeQuery();

            while (rs.next()) {

                usuario.setId(rs.getInt("id"));
                usuario.setLogin(rs.getString("login"));
                usuario.setTipo(rs.getString("tipo"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setNomeu(rs.getString("nomeu"));
                usuario.setCpf(rs.getString("cpf"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setEndereco(rs.getString("endereco"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return usuario;
    }
    public void update(usuario p) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("UPDATE cardapio SET login = ? ,senha = ?,tipo = ?, nomeu=?, cpf=?, telefone=?, endereco=? WHERE id = ?");
            stmt.setString(1, p.getLogin());
            stmt.setString(2, p.getSenha());
            stmt.setString(3, p.getTipo());
            stmt.setString(4, p.getNomeu());
            stmt.setString(5, p.getCpf());
            stmt.setString(6, p.getTelefone());
            stmt.setString(7, p.getEndereco());
            stmt.setInt(8, p.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Usuario atualizado com sucesso!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atualizar: " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
}