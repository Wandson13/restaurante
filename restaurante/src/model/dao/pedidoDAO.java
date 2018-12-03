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
import model.bean.pedido;

public class pedidoDAO {
    public void create(pedido p) {
        
        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO pedido (prato,bebida,valor)VALUES(?,?,?)");
            stmt.setString(1, p.getPrato());
            stmt.setString(2, p.getBebida());
            stmt.setDouble(3, p.getValor());

            stmt.executeUpdate();

            JOptionPane.showMessageDialog(null, "Pedido feito com sucesso!");
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public List<pedido> read() {

        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<pedido> pedidos = new ArrayList<>();

        try {
            stmt = con.prepareStatement("SELECT * FROM pedido");
            rs = stmt.executeQuery();

            while (rs.next()) {

                pedido pedido = new pedido();

                pedido.setId(rs.getInt("id"));
                pedido.setPrato(rs.getString("prato"));
                pedido.setBebida(rs.getString("bebida"));
                pedido.setValor(rs.getDouble("valor"));
                pedidos.add(pedido);
            }

        } catch (SQLException ex) {
            Logger.getLogger(pedidoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return pedidos;

    }
}
