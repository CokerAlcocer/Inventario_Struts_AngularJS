package mx.utez.edu.app.product.model;

import mx.utez.edu.app.utils.DatabaseConnection;

import javax.xml.crypto.Data;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    Connection con;
    Statement stm;
    PreparedStatement pstm;
    ResultSet rs;

    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SELECT * FROM product";
            stm = con.createStatement();
            rs = stm.executeQuery(query);
            while(rs.next()){
                Product p = new Product(
                        rs.getInt("id"),
                        rs.getInt("quantity"),
                        rs.getInt("brand_id"),
                        rs.getInt("category_id"),
                        rs.getDouble("price"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getString("image_url")
                );

                products.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }

        return products;
    }

    public List<Product> findAllWithCategory() {
        List<Product> products = new ArrayList<>();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SELECT p.*, c.name AS category_name, c.icon_name AS icon_name FROM product p INNER JOIN category c ON p.category_id = c.id";
            stm = con.createStatement();
            rs = stm.executeQuery(query);
            while(rs.next()){
                Product p = new Product(
                        rs.getInt("id"),
                        rs.getInt("quantity"),
                        rs.getInt("brand_id"),
                        rs.getInt("category_id"),
                        rs.getDouble("price"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getString("image_url"),
                        rs.getString("category_name"),
                        rs.getString("icon_name")
                );

                products.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }

        return products;
    }

    public Product findById(int id) {
        Product p = new Product();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SELECT * FROM product WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            if(rs.next()){
                p.setId(rs.getInt("id"));
                p.setQuantity(rs.getInt("quantity"));
                p.setBrandId(rs.getInt("brand_id"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setPrice(rs.getDouble("price"));
                p.setName(rs.getString("name"));
                p.setDescription(rs.getString("description"));
                p.setImageUrl(rs.getString("image_url"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return p;
    }

    public boolean save(Product p){
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "INSERT INTO product(quantity, brand_id, category_id, price, name, description, image_url) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, p.getQuantity());
            pstm.setInt(2, p.getBrandId());
            pstm.setInt(3, p.getCategoryId());
            pstm.setDouble(4, p.getPrice());
            pstm.setString(5, p.getName());
            pstm.setString(6, p.getDescription());
            pstm.setString(7, p.getImageUrl());
            state = pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return state;
    }

    public boolean update(Product p){
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "UPDATE product SET quantity = ?, brand_id = ?, category_id = ?, price = ?, name = ?, description = ?, image_url = ? WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, p.getQuantity());
            pstm.setInt(2, p.getBrandId());
            pstm.setInt(3, p.getCategoryId());
            pstm.setDouble(4, p.getPrice());
            pstm.setString(5, p.getName());
            pstm.setString(6, p.getDescription());
            pstm.setString(7, p.getImageUrl());
            pstm.setInt(8, p.getId());
            state = pstm.executeUpdate() == 1;
        } catch (SQLException e) {
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
            String query = "DELETE FROM product WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, id);
            state = pstm.executeUpdate() == 1;
        } catch (SQLException e) {
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
