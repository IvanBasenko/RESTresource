public with sharing class MedicationRouter extends RestRoute {

    private final String patientId;
    private static PatientMedicationSelector selector = new PatientMedicationSelector();

    public MedicationRouter(String patientId) {
        this.patientId = patientId;
    }

    protected override Object doGet() {
        return selector.selectByPatientId(this.patientId);
    }
}