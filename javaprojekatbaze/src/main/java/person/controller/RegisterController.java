package person.controller;

import person.model.utility.JDBCUtils;

import java.util.Date;

public class RegisterController {
    public static void register(String username, String password, String name, String surname, Date dob, String address, String email, String phone) {
        String query = "INSERT INTO korisnici (korisnicko_ime, sifra, ime, prezime, datum_rodjenja, adresa, email, telefon) VALUES " +
                "('" + username + "', '" + password + "', '" + name + "', '" + surname + "', '" + dob + "', '" + address + "', '" + email + "', '" + phone + "')";
        JDBCUtils.executeUpdate(query);
    }
}
