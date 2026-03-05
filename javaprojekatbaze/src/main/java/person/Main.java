package person;


import person.model.utility.JDBCUtils;
import person.view.LoginForm;
import person.view.MainForm;

public class Main {
    public static void main(String[] args) {

        JDBCUtils.connect();


        new MainForm();
    }
}

