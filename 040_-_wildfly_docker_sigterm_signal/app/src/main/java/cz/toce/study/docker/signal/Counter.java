package cz.toce.study.docker.signal;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;

@Singleton
@Startup
public class Counter {

    @PostConstruct
    public void onStart(){
        System.out.println("Startup of singleton...");
    }

    @PreDestroy
    public void onDestroy(){
        System.out.println("Termination of singleton...");
    }
}