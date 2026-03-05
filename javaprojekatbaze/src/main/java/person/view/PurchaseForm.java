package person.view;



import person.controller.PurchaseController;
import person.model.StambeniObjekti;

import javax.swing.*;
import java.sql.Date;
import java.util.List;

public class PurchaseForm extends JFrame {
    private JPanel purchasePanel;
    private JComboBox planetComboBox;
    private JTable objectTable;
    private JButton purchaseButton;
    private JScrollPane scrollPane;

    public PurchaseForm() {
        setContentPane(purchasePanel);
        setTitle("Purchase");
        setSize(800, 600);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setVisible(true);

        purchaseButton.addActionListener(e -> {
            int planetId = (int) planetComboBox.getSelectedItem();
            List<StambeniObjekti> objects = PurchaseController.getAvailableObjects(planetId);
            String[] columnNames = {"ID", "Vrsta"};
            Object[][] data = new Object[objects.size()][columnNames.length];

            for (int i = 0; i < objects.size(); i++) {
                StambeniObjekti obj = objects.get(i);
                data[i][0] = obj.getIdObjekta();
                data[i][1] = obj.getVrstaObjekta();
            }

            objectTable = new JTable(data, columnNames);
            scrollPane.setViewportView(objectTable);
        });

        purchaseButton.addActionListener(e -> {
            int userId = 1; // This should be dynamically set
            int objectId = (int) objectTable.getValueAt(objectTable.getSelectedRow(), 0);
            Date purchaseDate = new Date(System.currentTimeMillis());

            PurchaseController.purchaseObject(userId, objectId, purchaseDate);
            JOptionPane.showMessageDialog(null, "Purchase successful!");
        });
    }
}

