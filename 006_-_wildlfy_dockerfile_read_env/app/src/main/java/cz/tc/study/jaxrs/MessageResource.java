package cz.tc.study.jaxrs;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;

//http://localhost:8080/app/resources/message
@Path("message")
public class MessageResource {
    @GET
    public String whatever() {
        StringBuilder sb = new StringBuilder();
        System.getenv().forEach((k, v) -> {
            System.out.println(k + ":" + v);
            sb.append(k + ":" + v).append("\n");
        });        
        return sb.toString();
    }
}
