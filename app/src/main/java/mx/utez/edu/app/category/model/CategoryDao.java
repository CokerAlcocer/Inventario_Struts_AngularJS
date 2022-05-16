package mx.utez.edu.app.category.model;

import mx.utez.edu.app.utils.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    Connection con;
    Statement stm;
    PreparedStatement pstm;
    ResultSet rs;

    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SELECT * FROM category";
            stm = con.createStatement();
            rs = stm.executeQuery(query);
            while (rs.next()){
                Category c = new Category(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description")
                );

                categories.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return categories;
    }

    public Category findById(int id) {
        boolean flag;
        try {

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return flag;
    }

    public boolean save() {
        List<Category> categories = new ArrayList<>();
        try {

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return
    }

    public boolean update(int id) {
        List<Category> categories = new ArrayList<>();
        try {

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return
    }

    public boolean delete(int id) {
        List<Category> categories = new ArrayList<>();
        try {

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return
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
