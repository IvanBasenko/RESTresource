public with sharing class PatientService {

    public void updatePatientData(Patient__c patient, Map<String, Object> values) {
        patient.Temperature__c = (Decimal) values.get('temperature');
        patient.Pulse__c = (Decimal) values.get('pulse');
        update patient;
    }

}
