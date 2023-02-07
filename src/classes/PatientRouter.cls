public with sharing class PatientRouter extends RestRoute {

    private static PatientSelector selector = new PatientSelector();
    private static PatientService service = new PatientService();

    protected override Object doGet() {
        if (!String.isEmpty(this.resourceId)) {
            return selector.selectById(this.resourceId);
        }
        return selector.selectAll();
    }

    protected override Object doPut() {
        if (String.isEmpty(this.resourceId)) {
            throw new RestRouteError.RestException('Please specify Patient ID', 'NOT_SUPPORTED', 400);
        }
        Map<String, Object> body = (Map<String, Object>) JSON.deserializeUntyped(
                request.requestBody.toString()
        );
        Patient__c patient = new Patient__c(Id = this.resourceId);
        service.updatePatientData(patient, body);
        return patient;
    }

    //define downstream route
    protected override Map<String, RestRoute> getNextRouteMap() {
        return new Map<String, RestRoute>{
                'medications' => new MedicationRouter(this.resourceId)
        };
    }
}
