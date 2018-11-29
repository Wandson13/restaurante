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
import model.bean.entrega;

/**
 *
 * @author Pichau
 */
public class entregaDAO {
    public void create(entrega p) {
        
        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO pedido (nentrega,produto)VALUES(?,?,)");
            stmt.setInt(1, p.getNentrega());
            stmt.setString(2, p.getProduto());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Salvo com sucesso!");
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public List<entrega> read() {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<entrega> entregas = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM pedido");
            rs = stmt.executeQuery();

            while (rs.next()) {

                entrega entrega = new entrega();

                entrega.setId(rs.getInt("id"));
                entrega.setNentrega(rs.getInt("nentrega"));
                entrega.setProduto(rs.getString("produto"));
                entregas.add(entrega);
            }

        } catch (SQLException ex) {
            Logger.getLogger(entregaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return entregas;

    }
}
