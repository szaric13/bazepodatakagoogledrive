package person.model;



public class Putovanja {
    private int idPutovanja;
    private int idKorisnika;
    private int idPrevoza;
    private int brojKarata;

    public Putovanja(int idPutovanja, int idKorisnika, int idPrevoza, int brojKarata) {
        this.idPutovanja = idPutovanja;
        this.idKorisnika = idKorisnika;
        this.idPrevoza = idPrevoza;
        this.brojKarata = brojKarata;
    }

    public int getIdPutovanja() {
        return idPutovanja;
    }

    public void setIdPutovanja(int idPutovanja) {
        this.idPutovanja = idPutovanja;
    }

    public int getIdKorisnika() {
        return idKorisnika;
    }

    public void setIdKorisnika(int idKorisnika) {
        this.idKorisnika = idKorisnika;
    }

    public int getIdPrevoza() {
        return idPrevoza;
    }

    public void setIdPrevoza(int idPrevoza) {
        this.idPrevoza = idPrevoza;
    }

    public int getBrojKarata() {
        return brojKarata;
    }

    public void setBrojKarata(int brojKarata) {
        this.brojKarata = brojKarata;
    }
}

