/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import model.bean.bebida;

/**
 *
 * @author IFMA
 */
public class bebidaDAO {
    public void create(bebida p) {
        
        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO bebida (nome,preco,categoria)VALUES(?,?,?)");
            stmt.setString(1, p.getNome());
            stmt.setFloat(2, p.getPreco());
            stmt.setString(3, p.getCategoria());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Salvo com sucesso!");
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public List<bebida> read() {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<bebida> bebidas = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM bebida");
            rs = stmt.executeQuery();

            while (rs.next()) {

                bebida bebida = new bebida();

                bebida.setId(rs.getInt("id"));
                bebida.setNome(rs.getString("nome"));
                bebida.setPreco(rs.getFloat("preco"));
                bebida.setCategoria(rs.getString("categoria"));
                bebidas.add(bebida);
            }

        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return bebidas;

    }
    public List<bebida> readNome(String nome) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<bebida> bebidas = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM bebida WHERE nome LIKE ?");
            stmt.setString(1, "%"+nome+"%");
            
            rs = stmt.executeQuery();

            while (rs.next()) {

                bebida bebida = new bebida();

                bebida.setId(rs.getInt("id"));
                bebida.setNome(rs.getString("nome"));
                bebida.setPreco(rs.getFloat("preco"));
                bebida.setCategoria(rs.getString("categoria"));
                bebidas.add(bebida);
            }

        } catch (SQLException ex) {
            Logger.getLogger(pratoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return bebidas;

    }
    
    public void update(bebida p) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("UPDATE bebida SET nome = ? ,preco = ?,categoria = ? WHERE id = ?");
            stmt.setString(1, p.getNome());
            stmt.setFloat(2, p.getPreco());
            stmt.setString(3, p.getCategoria());
            stmt.setInt(4, p.getId());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Cardapio atualizado com sucesso!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atualizar: " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public void delete(bebida p) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM bebida WHERE id = ?");
            stmt.setInt(1, p.getId());      

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Excluido com sucesso!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir: " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
}
