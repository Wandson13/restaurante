package model.dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class auxiliarDAO {
    public void create(int a, String b) {
        
        Connection con = ConnectionFactory.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO aux (iduser,tipo)VALUES(?,?)");
            stmt.setInt(1,a);
            stmt.setString(2,b);

            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }

    }
    public int read() {

        Connection con = ConnectionFactory.getConnection(); 
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String i=null;
        int o=3;

        try {
            stmt = con.prepareStatement("SELECT * FROM aux ORDER BY cod DESC LIMIT 1");
            rs = stmt.executeQuery();

            while (rs.next()) {
                i = rs.getString("tipo");
                if(i.equals("Administrador")){
                    o=0;
                }
                if(i.equals("Usuario Comum")){
                    o=1;
                }
                if(i.equals("Entregador")){
                    o=2;
                }  
            }
        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return o;
    }
    public int readCod() {

        Connection con = ConnectionFactory.getConnection(); 
        PreparedStatement stmt = null;
        ResultSet rs = null;

        int i=4;    

        try {
            stmt = con.prepareStatement("SELECT * FROM aux ORDER BY cod DESC LIMIT 1");
            rs = stmt.executeQuery();

            while (rs.next()) {
                i = rs.getInt("id");
            }

        } catch (SQLException ex) {
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return i;

    }
    public int readUId() {

        Connection con = ConnectionFactory.getConnection(); 
        PreparedStatement stmt = null;
        ResultSet rs = null;

        int i=0;    

        try {
            stmt = con.prepareStatement("SELECT * FROM aux ORDER BY cod DESC LIMIT 1");
            rs = stmt.executeQuery();

            while (rs.next()) {
                i = rs.getInt("iduser");
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler iduser: "+ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt);
        }
        return i;
    }
}
