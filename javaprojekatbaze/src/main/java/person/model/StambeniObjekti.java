package person.model;



public class StambeniObjekti {
    private int idObjekta;
    private int idPlanete;
    private String vrstaObjekta;

    public StambeniObjekti(int idObjekta, int idPlanete, String vrstaObjekta) {
        this.idObjekta = idObjekta;
        this.idPlanete = idPlanete;
        this.vrstaObjekta = vrstaObjekta;
    }

    public StambeniObjekti() {
    }

    public int getIdObjekta() {
        return idObjekta;
    }

    public void setIdObjekta(int idObjekta) {
        this.idObjekta = idObjekta;
    }

    public int getIdPlanete() {
        return idPlanete;
    }

    public void setIdPlanete(int idPlanete) {
        this.idPlanete = idPlanete;
    }

    public String getVrstaObjekta() {
        return vrstaObjekta;
    }

    public void setVrstaObjekta(String vrstaObjekta) {
        this.vrstaObjekta = vrstaObjekta;
    }
}

