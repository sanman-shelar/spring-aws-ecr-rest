package com.aws;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello/{name}")
    public String hello(@PathVariable String name) {
        return "Hello ".concat(name).concat("!");
    }
    
    @GetMapping("/bye/{name}")
    public String bye(@PathVariable String name) {
        return "Bye ".concat(name).concat("!");
    }
}
