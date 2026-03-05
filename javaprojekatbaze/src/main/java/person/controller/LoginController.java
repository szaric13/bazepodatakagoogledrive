package person.controller;




import person.model.utility.JDBCUtils;

import javax.swing.*;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginController {
    public static boolean login(String username, String password) {
        String query = "SELECT * FROM korisnici WHERE korisnicko_ime = '" + username + "' AND sifra = '" + password + "'";
        ResultSet resultSet = JDBCUtils.executeQuery(query);
        try {
            return resultSet.next();
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}

