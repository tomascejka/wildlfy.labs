package cz.tc.study.wildfly;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;

//http://localhost:8080/app/resources/message
@Path("message")
public class MessageResource {
    @GET
    public String whatever() {
        return "hey, duke!";
    }
}
