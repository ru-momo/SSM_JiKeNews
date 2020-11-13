package com.suha.controller.end;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Path;

@Controller
public class EndTestController {
    @RequestMapping("end/{path}")
    public String mytest1(@PathVariable String path){
        return "end/"+path;
    }

}


