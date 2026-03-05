package person.model;


import java.util.Date;

public class Kupovina {
    private int idKupovine;
    private int idKorisnika;
    private int idObjekta;
    private Date datumKupovine;

    public Kupovina(int idKupovine, int idKorisnika, int idObjekta, Date datumKupovine) {
        this.idKupovine = idKupovine;
        this.idKorisnika = idKorisnika;
        this.idObjekta = idObjekta;
        this.datumKupovine = datumKupovine;
    }

    public int getIdKupovine() {
        return idKupovine;
    }

    public void setIdKupovine(int idKupovine) {
        this.idKupovine = idKupovine;
    }

    public int getIdKorisnika() {
        return idKorisnika;
    }

    public void setIdKorisnika(int idKorisnika) {
        this.idKorisnika = idKorisnika;
    }

    public int getIdObjekta() {
        return idObjekta;
    }

    public void setIdObjekta(int idObjekta) {
        this.idObjekta = idObjekta;
    }

    public Date getDatumKupovine() {
        return datumKupovine;
    }

    public void setDatumKupovine(Date datumKupovine) {
        this.datumKupovine = datumKupovine;
    }
}

