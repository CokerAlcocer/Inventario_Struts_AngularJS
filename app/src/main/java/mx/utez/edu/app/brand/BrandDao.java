package mx.utez.edu.app.brand;

import mx.utez.edu.app.utils.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BrandDao {

    Connection con;
    Statement stm;
    PreparedStatement pstm;
    ResultSet rs;

    public List<Brand> findAll() {
        List<Brand> brands = new ArrayList<>();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SELECT * FROM brand";
            stm = con.createStatement();
            rs = stm.executeQuery(query);
            while(rs.next()){
                Brand b = new Brand(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image_url")
                );

                brands.add(b);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return brands;
    }

    public Brand findById(int id) {
        Brand b = new Brand();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SLEECT * FROM brand WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            if(rs.next()){
                b.setId(rs.getInt("id"));
                b.setName(rs.getString("name"));
                b.setImageUrl(rs.getString("image_url"));
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return b;
    }

    public boolean save(Brand b) {
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "INSERT INTO brand(name, image_url) VALUES(?, ?)";
            pstm = con.prepareStatement(query);
            pstm.setString(1, b.getName());
            pstm.setString(2, b.getImageUrl());
            System.out.println("-----> "+b.getName());
            state = pstm.executeUpdate() == 1;
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return state;
    }

    public boolean update(Brand b) {
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "UPDATE brand SET name = ?, image_url = ? WHERE id = ? ";
            pstm = con.prepareStatement(query);
            pstm.setString(1, b.getName());
            pstm.setString(2, b.getImageUrl());
            pstm.setInt(3, b.getId());
            state = pstm.executeUpdate() == 1;
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return state;
    }

    public boolean delete(int id){
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "DELETE FROM brand WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, id);
            state = pstm.executeUpdate() == 1;
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return state;
    }

    public void closeConnection(){
        try {
            if (con != null) {
                con.close();
            }
            if (pstm != null) {
                con.close();
            }
            if (stm != null) {
                con.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
