package person.controller;



import person.model.utility.JDBCUtils;
import person.model.NebeskaTela;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import java.sql.*;

public class PlanetController {

    public static List<NebeskaTela> getAllPlanets() {
        List<NebeskaTela> planets = new ArrayList<>();
        String query = "SELECT * FROM nebeskaTela";

        try {
            Connection connection = JDBCUtils.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                NebeskaTela planet = new NebeskaTela();
                planet.setIdPlanete(resultSet.getInt("id_planete"));
                planet.setTip(resultSet.getInt("tip"));
                planet.setNaziv(resultSet.getString("naziv_planete"));
                planet.setUdaljenostOdZvezde(resultSet.getDouble("udaljenost_od_zvezde"));
                planet.setMinimalnaTemperatura(resultSet.getDouble("minimalna_temperatura"));
                planet.setMaksimalnaTemperatura(resultSet.getDouble("maksimalna_temperatura"));
                planet.setProcenatKiseonika(resultSet.getDouble("procenat_kiseonika"));
                planet.setProcenatGasa(resultSet.getDouble("procenat_gasa"));
                planet.setVisina(resultSet.getDouble("visina"));
                planet.setBrzinaOkretanja(resultSet.getDouble("brzinaOkretanja"));
                planet.setBrojUmrlihProsleGodine(resultSet.getInt("broj_umrlih_prosle_godine"));

                planets.add(planet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return planets;
    }

    public static NebeskaTela getPlanetById(int planetId) {
        NebeskaTela planet = null;
        String query = "SELECT * FROM nebeskaTela WHERE id_planete = ?";

        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, planetId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                planet = new NebeskaTela();
                planet.setIdPlanete(resultSet.getInt("id_planete"));
                planet.setTip(resultSet.getInt("tip"));
                planet.setNaziv(resultSet.getString("naziv_planete"));
                planet.setUdaljenostOdZvezde(resultSet.getDouble("udaljenost_od_zvezde"));
                planet.setMinimalnaTemperatura(resultSet.getDouble("minimalna_temperatura"));
                planet.setMaksimalnaTemperatura(resultSet.getDouble("maksimalna_temperatura"));
                planet.setProcenatKiseonika(resultSet.getDouble("procenat_kiseonika"));
                planet.setProcenatGasa(resultSet.getDouble("procenat_gasa"));
                planet.setVisina(resultSet.getDouble("visina"));
                planet.setBrzinaOkretanja(resultSet.getDouble("brzinaOkretanja"));
                planet.setBrojUmrlihProsleGodine(resultSet.getInt("broj_umrlih_prosle_godine"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return planet;
    }
}


