@RestResource(urlMapping='/patients/*')
global class PatientAPI {

    @HttpGet
    global static void handleGet() {
        handleRequest();
    }

    @HttpPost
    global static void handlePost() {
        handleRequest();
    }

    @HttpPut
    global static void handlePut() {
        handleRequest();
    }

    @HttpDelete
    global static void handleDelete() {
        handleRequest();
    }
    
    private static void handleRequest(){
        PatientRouter router = new PatientRouter();
        router.execute();
    }
}