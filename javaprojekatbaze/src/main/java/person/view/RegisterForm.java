package person.view;


import person.controller.RegisterController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Date;



import javax.swing.*;
import java.awt.*;
import java.sql.Date;

public class RegisterForm extends JFrame {
    private JTextField usernameField;
    private JPasswordField passwordField;
    private JTextField nameField;
    private JTextField surnameField;
    private JTextField dobField;
    private JTextField addressField;
    private JTextField emailField;
    private JTextField phoneField;
    private JButton registerButton;

    public RegisterForm() {

        setTitle("Register");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);


        JPanel panel = new JPanel(new GridLayout(9, 2));


        panel.add(new JLabel("Username:"));
        usernameField = new JTextField();
        panel.add(usernameField);

        panel.add(new JLabel("Password:"));
        passwordField = new JPasswordField();
        panel.add(passwordField);

        panel.add(new JLabel("Name:"));
        nameField = new JTextField();
        panel.add(nameField);

        panel.add(new JLabel("Surname:"));
        surnameField = new JTextField();
        panel.add(surnameField);

        panel.add(new JLabel("Date of Birth (YYYY-MM-DD):"));
        dobField = new JTextField();
        panel.add(dobField);

        panel.add(new JLabel("Address:"));
        addressField = new JTextField();
        panel.add(addressField);

        panel.add(new JLabel("Email:"));
        emailField = new JTextField();
        panel.add(emailField);

        panel.add(new JLabel("Phone:"));
        phoneField = new JTextField();
        panel.add(phoneField);

        registerButton = new JButton("Register");
        panel.add(registerButton);


        setContentPane(panel);


        registerButton.addActionListener(e -> {
            String username = usernameField.getText();
            String password = new String(passwordField.getPassword());
            String name = nameField.getText();
            String surname = surnameField.getText();
            Date dob = Date.valueOf(dobField.getText());
            String address = addressField.getText();
            String email = emailField.getText();
            String phone = phoneField.getText();

            RegisterController.register(username, password, name, surname, dob, address, email, phone);
            JOptionPane.showMessageDialog(this, "Registration successful!");
            dispose();
            new LoginForm();
        });

        setVisible(true);
    }
}
