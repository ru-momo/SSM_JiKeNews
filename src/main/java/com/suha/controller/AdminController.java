package com.suha.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {

    @RequestMapping("{path}")
    public String path(@PathVariable String path) {
        System.out.println("111" + path);
        return  "admin/"+path;
    }
}
