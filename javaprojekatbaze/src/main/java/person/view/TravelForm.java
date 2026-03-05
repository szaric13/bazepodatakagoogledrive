package person.view;



import person.controller.TravelController;
import person.model.Prevoz;

import javax.swing.*;
import java.util.List;

public class TravelForm extends JFrame {
    private JPanel travelPanel;
    private JComboBox planetComboBox;
    private JTable transportTable;
    private JButton bookButton;
    private JScrollPane scrollPane;

    public TravelForm() {
        setContentPane(travelPanel);
        setTitle("Travel");
        setSize(800, 600);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setVisible(true);

        planetComboBox.addActionListener(e -> {
            int planetId = (int) planetComboBox.getSelectedItem();
            List<Prevoz> transport = TravelController.getAvailableTransport(planetId);
            String[] columnNames = {"ID", "Prevozno Sredstvo", "Broj Mesta", "Datum Polaska"};
            Object[][] data = new Object[transport.size()][columnNames.length];

            for (int i = 0; i < transport.size(); i++) {
                Prevoz tr = transport.get(i);
                data[i][0] = tr.getIdPrevoza();
                data[i][1] = tr.getPrevoznoSredstvo();
                data[i][2] = tr.getBrojSlobodnihMesta();
                data[i][3] = tr.getDatumVremePolaska();
            }

            transportTable = new JTable(data, columnNames);
            scrollPane.setViewportView(transportTable);
        });

        bookButton.addActionListener(e -> {
            int userId = 1; // This should be dynamically set
            int transportId = (int) transportTable.getValueAt(transportTable.getSelectedRow(), 0);
            int ticketCount = Integer.parseInt(JOptionPane.showInputDialog("Enter number of tickets:"));

            TravelController.bookTravel(userId, transportId, ticketCount);
            JOptionPane.showMessageDialog(null, "Booking successful!");
        });
    }
}

