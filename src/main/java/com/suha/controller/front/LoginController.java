package com.suha.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("front/login")
    public String login(){
        return "front/login";
    }

    @RequestMapping("front/signup")
    public String signup(){
        return "front/signup";
    }

    @RequestMapping("front/news")
    public String news(Integer id){
        System.out.println(id);
        return "front/news";
    }
}
