package com.suha.controller;

import com.suha.pojo.UserPowerInfo;
import com.suha.service.UserPowerInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.Map;
import static java.awt.SystemColor.info;

@Controller
@RequestMapping("admin/UserPower")
public class UserPowerInfoController {

    @Autowired
    private UserPowerInfoService us;

    @RequestMapping("{path}")
    public String path(@PathVariable String path) {
        System.out.println("111" + path);
        return "admin/UserPower/" + path;
    }


    //添加用户
    @RequestMapping(value = "addInfo",method = RequestMethod.POST)
    public String addUser(UserPowerInfo info){
        info.setId(null);
        us.addInfo(info);
        System.out.println(info);
        return "admin";


    }

    //根据id删除用户
    @ResponseBody
    @RequestMapping(value = "delInfo",method = RequestMethod.GET)
    public Map<String,Object> delInfo(Integer id){
        if(id == null){
            return ResponseCode.idIsNotNull();
        }
        UserPowerInfo info = us.findInfo(id);
        if(info == null){
            return ResponseCode.idIsNotExists(id);
        }
        us.delInfo(id);
        return ResponseCode.ok();

    }

    //根据id查询单个用户
    @RequestMapping(value = "getInfo",method = RequestMethod.GET)
    public String get(Integer id, Model model){
        if(id == null){
            return ResponseCode.idIsNotNull().get("data").toString();
        }
        UserPowerInfo info = us.findInfo(id);
        if (info == null) {
            return ResponseCode.idIsNotExists(id).get("data").toString();
        }
        model.addAttribute("info",info);
        return "admin/UserPower/edit";
    }





}
