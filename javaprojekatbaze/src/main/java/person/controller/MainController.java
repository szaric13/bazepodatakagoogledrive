package person.controller;


import person.model.utility.JDBCUtils;
import person.view.MainForm;

public class MainController {
    public static void main(String[] args) {
        JDBCUtils.connect();
        new MainForm();
    }
}