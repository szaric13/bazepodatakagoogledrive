package person.controller;



import person.model.Prevoz;
import person.model.utility.JDBCUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TravelController {
    public static List<Prevoz> getAvailableTransport(int planetId) {
        List<Prevoz> transport = new ArrayList<>();
        String query = "SELECT * FROM prevoz WHERE id_planete = " + planetId;
        ResultSet resultSet = JDBCUtils.executeQuery(query);
        try {
            while (resultSet.next()) {
                Prevoz tr = new Prevoz();
                tr.setIdPrevoza(resultSet.getInt("id_prevoza"));
                tr.setIdPlanete(resultSet.getInt("id_planete"));
                tr.setPrevoznoSredstvo(resultSet.getString("prevozno_sredstvo"));
                tr.setBrojSlobodnihMesta(resultSet.getInt("broj_slobodnih_mesta"));
                tr.setDatumVremePolaska(resultSet.getTimestamp("datum_vreme_polaska"));
                transport.add(tr);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return transport;
    }

    public static void bookTravel(int userId, int transportId, int ticketCount) {
        String query = "INSERT INTO putovanja (id_korisnika, id_prevoza, broj_karata) VALUES (" +
                userId + ", " + transportId + ", " + ticketCount + ")";
        JDBCUtils.executeUpdate(query);
    }
}

