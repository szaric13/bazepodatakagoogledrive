package person.model.utility;

import person.model.NebeskaTela;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;



public class JDBCUtils {
    public static Connection connection = null;

    public static void connect() {
        Properties properties = new Properties();
        properties.put("user", "root");
        properties.put("password", "");
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", properties);
            //127.0.0.1 ip
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static Connection getConnection() {
        if (connection == null) {
            connect();
        }
        return connection;
    }
    public static ResultSet executeQuery(String query) {
        try {
            Statement statement = connection.createStatement();
            return statement.executeQuery(query);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void executeUpdate(String query) {
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(query);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<NebeskaTela> getHabitablePlanets() {
        List<NebeskaTela> planets = new ArrayList<>();
        String query = "SELECT * FROM nebeskaTela"+
                " WHERE udaljenost_od_zvezde BETWEEN 100 AND 200 "+
                " AND minimalna_temperatura BETWEEN 150 AND 250 "+
                " AND maksimalna_temperatura BETWEEN 250 AND 350 "+
                " AND (maksimalna_temperatura - minimalna_temperatura) <= 120 "+
                " AND procenat_kiseonika BETWEEN 15 AND 25 AND (procenat_kiseonika + procenat_gasa) BETWEEN 90 AND 99 " +
                " AND visina <= 1000 AND brzinaOkretanja BETWEEN 25 AND 35 " +
                " AND broj_umrlih_prosle_godine < 20";

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

    private JDBCUtils() {}
}
