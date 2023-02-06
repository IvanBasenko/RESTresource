public with sharing class PatientSelector {

    public List<Patient__c> selectAll() {
        return [
                SELECT
                        Age__c,
                        FirstName__c,
                        Id,
                        LastName__c,
                        Town__c,
                        Temperature__c,
                        Pulse__c
                FROM Patient__c
        ];
    }

    public List<Patient__c> selectById(String id) {
        return [
                SELECT
                        Age__c,
                        FirstName__c,
                        Id,
                        LastName__c,
                        Town__c,
                        Temperature__c,
                        Pulse__c
                FROM Patient__c
                WHERE Id = :id
                LIMIT 1
        ];
    }
}