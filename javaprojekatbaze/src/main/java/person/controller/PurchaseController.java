package person.controller;



import person.model.StambeniObjekti;
import person.model.utility.JDBCUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PurchaseController {
    public static List<StambeniObjekti> getAvailableObjects(int planetId) {
        List<StambeniObjekti> objects = new ArrayList<>();
        String query = "SELECT * FROM stambeniObjekti WHERE id_planete = " + planetId;
        ResultSet resultSet = JDBCUtils.executeQuery(query);
        try {
            while (resultSet.next()) {
                StambeniObjekti obj = new StambeniObjekti();
                obj.setIdObjekta(resultSet.getInt("id_objekta"));
                obj.setIdPlanete(resultSet.getInt("id_planete"));
                obj.setVrstaObjekta(resultSet.getString("vrsta_objekta"));
                objects.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return objects;
    }

    public static void purchaseObject(int userId, int objectId, Date purchaseDate) {
        String query = "INSERT INTO kupovina (id_korisnika, id_objekta, datum_kupovine) VALUES (" +
                userId + ", " + objectId + ", '" + purchaseDate + "')";
        JDBCUtils.executeUpdate(query);
    }
}

