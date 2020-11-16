package com.suha.controller.end;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pagesAddDocController {

    //接收表单数据
    @RequestMapping("end/pagesAddDoc")
    public String pagesAddDoc(){

        return "end/pagesAddDoc";
    }

    //删除图片
    @RequestMapping("end/pagesAddDoc/del")
    public String del(){
        return "";
    }

    // 看图片
    @RequestMapping("end/pagesAddDoc/see")
    public String see(){
        return "";
    }
}

