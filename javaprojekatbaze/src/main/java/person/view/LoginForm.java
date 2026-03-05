package person.view;



import person.controller.LoginController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;



import javax.swing.*;
import java.awt.*;

public class LoginForm extends JFrame {
    private JTextField usernameField;
    private JPasswordField passwordField;
    private JButton loginButton;
    private JButton registerButton;

    public LoginForm() {
        // Set up the frame
        setTitle("Login");
        setSize(300, 200);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // Create panel and layout
        JPanel panel = new JPanel(new GridLayout(3, 2));

        // Add components to the panel
        panel.add(new JLabel("Username:"));
        usernameField = new JTextField();
        panel.add(usernameField);

        panel.add(new JLabel("Password:"));
        passwordField = new JPasswordField();
        panel.add(passwordField);

        loginButton = new JButton("Login");
        registerButton = new JButton("Register");

        panel.add(loginButton);
        panel.add(registerButton);


        setContentPane(panel);


        loginButton.addActionListener(e -> {
            String username = usernameField.getText();
            String password = new String(passwordField.getPassword());

            if (LoginController.login(username, password)) {
                JOptionPane.showMessageDialog(this, "Login successful!");
                dispose();
                new MainForm();
            } else {
                JOptionPane.showMessageDialog(this, "Invalid username or password.");
            }
        });

        registerButton.addActionListener(e -> {
            dispose();
            new RegisterForm();
        });

        setVisible(true);
    }
}
