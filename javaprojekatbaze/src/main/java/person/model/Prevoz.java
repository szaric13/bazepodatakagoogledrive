package person.model;


import java.sql.Timestamp;

public class Prevoz {
    private int idPrevoza;
    private int idPlanete;
    private String prevoznoSredstvo;
    private int brojSlobodnihMesta;
    private Timestamp datumVremePolaska;

    public Prevoz(int idPrevoza, int idPlanete, String prevoznoSredstvo, int brojSlobodnihMesta, Timestamp datumVremePolaska) {
        this.idPrevoza = idPrevoza;
        this.idPlanete = idPlanete;
        this.prevoznoSredstvo = prevoznoSredstvo;
        this.brojSlobodnihMesta = brojSlobodnihMesta;
        this.datumVremePolaska = datumVremePolaska;
    }

    public Prevoz() {
    }

    public int getIdPrevoza() {
        return idPrevoza;
    }

    public void setIdPrevoza(int idPrevoza) {
        this.idPrevoza = idPrevoza;
    }

    public int getIdPlanete() {
        return idPlanete;
    }

    public void setIdPlanete(int idPlanete) {
        this.idPlanete = idPlanete;
    }

    public String getPrevoznoSredstvo() {
        return prevoznoSredstvo;
    }

    public void setPrevoznoSredstvo(String prevoznoSredstvo) {
        this.prevoznoSredstvo = prevoznoSredstvo;
    }

    public int getBrojSlobodnihMesta() {
        return brojSlobodnihMesta;
    }

    public void setBrojSlobodnihMesta(int brojSlobodnihMesta) {
        this.brojSlobodnihMesta = brojSlobodnihMesta;
    }

    public Timestamp getDatumVremePolaska() {
        return datumVremePolaska;
    }

    public void setDatumVremePolaska(Timestamp datumVremePolaska) {
        this.datumVremePolaska = datumVremePolaska;
    }
}

