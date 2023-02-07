public with sharing class PatientService {

    public void updatePatientData(Patient__c patient, Map<String, Object> body) {
        String value;
        for (String key : body.keySet()) {
            value = (String) body.get(key);
            if (String.isNotBlank(value)) {
                patient.put(key, Decimal.valueOf(value));
            } else {
                patient.put(key, null);
            }
        }
        update patient;
    }
}
