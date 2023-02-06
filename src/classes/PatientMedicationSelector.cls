public with sharing class PatientMedicationSelector {

    public List<PatientMedication__c> selectByPatientId(String patientId) {
        return [
                SELECT
                        Id,
                        Medication__r.Name,
                        Medication__r.Dose__c,
                        StartDate__c,
                        EndDate__c
                FROM PatientMedication__c
                WHERE Patient__c = :patientId
        ];
    }
}