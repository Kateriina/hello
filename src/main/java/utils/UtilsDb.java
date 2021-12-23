package utils;
/*
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Patient;
import beans.User;

public class UtilsDb {

    public static User findUser(Connection conn, //
                                String userName, String password) throws SQLException {

        String sql = "Select a.User_Name, a.Password, a.Gender from User_Account a " //
                + " where a.User_Name = ? and a.password= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String gender = rs.getString("Gender");
            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender);
            return user;
        }
        return null;
    }

    public static User findUser(Connection conn, String userName) throws SQLException {

        String sql = "Select a.User_Name, a.Password, a.Gender from User_Account a "//
                + " where a.User_Name = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String password = rs.getString("Password");
            String gender = rs.getString("Gender");
            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender);
            return user;
        }
        return null;
    }

    public static List<Patient> queryProduct(Connection conn) throws SQLException {
        String sql = "Select a.Code, a.Name, a.Price from Patient a ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Patient> list = new ArrayList<Patient>();
        while (rs.next()) {
            String id = rs.getString("Code");
            String name = rs.getString("Name");
            float price = rs.getFloat("Price");
            Patient patient = new Patient();
            patient.setId(id);
            patient.setName(name);
            patient.setPrice(price);
            list.add(patient);
        }
        return list;
    }

    public static Patient findProduct(Connection conn, String id) throws SQLException {
        String sql = "Select a.Code, a.Name, a.Price from Patient a where a.Code=?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);

        ResultSet rs = pstm.executeQuery();

        while (rs.next()) {
            String name = rs.getString("Name");
            float price = rs.getFloat("Price");
            Patient patient = new Patient(id, name, price);
            return patient;
        }
        return null;
    }

    public static void updateProduct(Connection conn, Patient patient) throws SQLException {
        String sql = "Update Patient set Name =?, Price=? where Code=? ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, patient.getName());
        pstm.setFloat(2, patient.getPrice());
        pstm.setString(3, patient.getId());
        pstm.executeUpdate();
    }

    public static void insertProduct(Connection conn, Patient patient) throws SQLException {
        String sql = "Insert into Patient(Code, Name,Price) values (?,?,?)";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, patient.getId());
        pstm.setString(2, patient.getName());
        pstm.setFloat(3, patient.getPrice());

        pstm.executeUpdate();
    }

    public static void deleteProduct(Connection conn, String id) throws SQLException {
        String sql = "Delete From Patient where id= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, id);

        pstm.executeUpdate();
    }

}

*/