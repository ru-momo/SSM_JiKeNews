package com.suha.controller.end;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pagesAddDocController {
    @RequestMapping("end/pagesAddDoc")
    public String pagesAddDoc(){




        return "end/pagesAddDoc";
    }
}
