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
import model.bean.prato;
import model.bean.usuario;

/**
 *
 * @author IFMA
 */
public class pratoDAO {
    public void create(prato p) {
        
        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO prato (nome,preco,categoria)VALUES(?,?,?)");
            stmt.setString(1, p.getNome());
            stmt.setDouble(2, p.getPreco());
            stmt.setString(3, p.getCategoria());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Salvo com sucesso!");
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public List<prato> read() {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<prato> cardapios = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM prato");
            rs = stmt.executeQuery();

            while (rs.next()) {

                prato cardapio = new prato();

                cardapio.setId(rs.getInt("id"));
                cardapio.setNome(rs.getString("nome"));
                cardapio.setPreco(rs.getDouble("preco"));
                cardapio.setCategoria(rs.getString("categoria"));
                cardapios.add(cardapio);
            }

        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return cardapios;

    }
    public List<prato> readNome(String nome) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<prato> cardapios = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM prato WHERE nome LIKE ?");
            stmt.setString(1, "%"+nome+"%");
            
            rs = stmt.executeQuery();

            while (rs.next()) {

                prato cardapio = new prato();

                cardapio.setId(rs.getInt("id"));
                cardapio.setNome(rs.getString("nome"));
                cardapio.setPreco(rs.getDouble("preco"));
                cardapio.setCategoria(rs.getString("categoria"));
                cardapios.add(cardapio);
            }

        } catch (SQLException ex) {
            Logger.getLogger(pratoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return cardapios;

    }
    
    public void update(prato p) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("UPDATE prato SET nome = ? ,preco = ?,categoria = ? WHERE id = ?");
            stmt.setString(1, p.getNome());
            stmt.setDouble(2, p.getPreco());
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
    public void delete(prato p) {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("DELETE FROM prato WHERE id = ?");
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
