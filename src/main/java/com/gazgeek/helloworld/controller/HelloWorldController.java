package com.gazgeek.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Spring Boot HelloWorld 案例
 *
 * Created by bysocket on 16/4/26.
 */
@RestController
public class HelloWorldController {

    @RequestMapping("/helloworld")
    public String sayHello() {
        return "Hello,World! ~~yhb";
    }


    @RequestMapping("/myname")
    public String sayHelloMyname(String token) {
        System.out.println("sayHelloMyname-->token: [ "+ token +" ]" );
        return "Hello,World! ~~yhb";
    }
}
