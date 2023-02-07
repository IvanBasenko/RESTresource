public with sharing class PatientService {

    public void updatePatientData(Patient__c patient, Map<String, Object> values) {
        String temperature = (String) values.get('Temperature__c');
        String pulse = (String) values.get('Pulse__c');
        if (String.isNotBlank(temperature)) {
            patient.Temperature__c = Decimal.valueOf(temperature);
        }
        if (String.isNotBlank(pulse)) {
            patient.Pulse__c = Decimal.valueOf(pulse);
        }
        update patient;
    }
}
