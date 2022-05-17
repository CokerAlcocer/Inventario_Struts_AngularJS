package mx.utez.edu.app.category;

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
                        rs.getString("icon_name"),
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
        Category c = new Category();
        try {
            con = DatabaseConnection.getConnection();
            String query = "SELECT * FROM category WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            if(rs.next()){
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setIconName(rs.getString("icon_name"));
                c.setDescription(rs.getString("description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return c;
    }

    public boolean save(Category c) {
        System.out.println(c.getName());
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "INSERT INTO category(name, icon_name, description) VALUES(?, ?, ?)";
            pstm = con.prepareStatement(query);
            pstm.setString(1, c.getName());
            pstm.setString(2, c.getIconName());
            pstm.setString(3, c.getDescription());
            state = pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return state;
    }

    public boolean update(Category c) {
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "UPDATE category SET name = ?, icon_name = ?, description = ? WHERE id = ?";
            pstm = con.prepareStatement(query);
            pstm.setString(1, c.getName());
            pstm.setString(2, c.getIconName());
            pstm.setString(3, c.getDescription());
            pstm.setInt(4, c.getId());
            state = pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return state;
    }

    public boolean delete(int id) {
        boolean state = false;
        try {
            con = DatabaseConnection.getConnection();
            String query = "DELETE FROM category WHERE id = ?";
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
