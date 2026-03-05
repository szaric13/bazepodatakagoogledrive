package person.view;



import person.controller.PlanetController;
import person.model.NebeskaTela;

import javax.swing.*;
import java.util.List;


import java.awt.*;

public class MainForm extends JFrame {
    private JList<String> planetList;
    private JButton viewDetailsButton;
    private DefaultListModel<String> listModel;

    public MainForm() {
        // Set up the frame
        setTitle("Main Form");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);


        JPanel panel = new JPanel(new BorderLayout());


        listModel = new DefaultListModel<>();
        planetList = new JList<>(listModel);
        panel.add(new JScrollPane(planetList), BorderLayout.CENTER);


        loadPlanets();


        viewDetailsButton = new JButton("View Details");
        panel.add(viewDetailsButton, BorderLayout.SOUTH);


        setContentPane(panel);


        viewDetailsButton.addActionListener(e -> {
            String selectedPlanet = planetList.getSelectedValue();
            if (selectedPlanet != null) {
                int planetId = Integer.parseInt(selectedPlanet.split(":")[0]);
                new PlanetForm(planetId);
            } else {
                JOptionPane.showMessageDialog(this, "Please select a planet.");
            }
        });

        setVisible(true);
    }

    private void loadPlanets() {
        List<NebeskaTela> planets = PlanetController.getAllPlanets();
        for (NebeskaTela planet : planets) {
            listModel.addElement(planet.getIdPlanete() + ": " + planet.getNaziv());
        }
    }
}
