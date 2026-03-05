package person.model;


import java.util.Date;

public class Misije {
    private int idMisije;
    private int idPlanete;
    private Date datumMisije;

    public Misije(int idMisije, int idPlanete, Date datumMisije) {
        this.idMisije = idMisije;
        this.idPlanete = idPlanete;
        this.datumMisije = datumMisije;
    }

    public int getIdMisije() {
        return idMisije;
    }

    public void setIdMisije(int idMisije) {
        this.idMisije = idMisije;
    }

    public int getIdPlanete() {
        return idPlanete;
    }

    public void setIdPlanete(int idPlanete) {
        this.idPlanete = idPlanete;
    }

    public Date getDatumMisije() {
        return datumMisije;
    }

    public void setDatumMisije(Date datumMisije) {
        this.datumMisije = datumMisije;
    }
}

