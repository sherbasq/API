package clientAPI;

public class FactoryRequest {

    public static RequestClient make(String type){
        RequestClient client;
        switch (type){
            case "get":
                client=new requestGET();
                break;
            case "post":
                client=new requestPOST();
                break;
            case "put":
                client=new requestPUT();
                break;
            case "delete":
                client=new requestDELETE();
                break;
            default:
                client=new requestGET();
                break;

        }
        return client;
    }
}
