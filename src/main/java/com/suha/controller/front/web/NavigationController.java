package com.suha.controller.front.web;

import com.suha.utils.ResponseCode;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class NavigationController {

    @RequestMapping(value = "getNewsList",method = RequestMethod.POST)
    public Map<String, Object> getNewsList(){

        return ResponseCode.ok();
    }
}
