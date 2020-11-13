package com.suha.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class FrontTestController {
    @RequestMapping("front/{path}")
    public String mytest(@PathVariable String path){


        return "front/"+path;
    }

}


