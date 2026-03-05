package person.view;



import person.controller.PlanetController;
import person.model.NebeskaTela;

import javax.swing.*;


import java.awt.*;

public class PlanetForm extends JFrame {
    private NebeskaTela planet;
    private JTextArea detailsArea;

    public PlanetForm(int planetId) {

        setTitle("Planet Details");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);


        planet = PlanetController.getPlanetById(planetId);


        detailsArea = new JTextArea();
        detailsArea.setText(getPlanetDetails());
        detailsArea.setEditable(false);

        // Add text area to the frame
        add(new JScrollPane(detailsArea), BorderLayout.CENTER);

        setVisible(true);
    }

    private String getPlanetDetails() {
        return "Name: " + planet.getNaziv() + "\n" +
                "Distance from star: " + planet.getUdaljenostOdZvezde() + " million km\n" +
                "Min Temperature: " + planet.getMinimalnaTemperatura() + " K\n" +
                "Max Temperature: " + planet.getMaksimalnaTemperatura() + " K\n" +
                "Oxygen: " + planet.getProcenatKiseonika() + " %\n" +
                "Other Gas: " + planet.getProcenatGasa() + " %\n" +
                "Height: " + planet.getVisina() + " km\n" +
                "Rotation Speed: " + planet.getBrzinaOkretanja() + " km/s\n" +
                "Deaths last year: " + planet.getBrojUmrlihProsleGodine();
    }
}
