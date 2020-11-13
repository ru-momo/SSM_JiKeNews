package com.suha.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("{path}")
    public String login(@PathVariable String path ){

        return "path";
    }
}
