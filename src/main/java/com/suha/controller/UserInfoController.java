package com.suha.controller;


import com.suha.pojo.UserInfo;
import com.suha.service.BaseService;
import com.suha.service.UserInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("admin")
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping("{path}")
    public String path(@PathVariable String path) {
        return "admin/" + path;
    }

    /**
     *
     * 注册
     *
     * @param telphone
     * @param password
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "addInfo",method = RequestMethod.POST)
    public Map<String,Object> signup(@RequestParam(defaultValue = "telphone")String telphone,
                      @RequestParam(defaultValue = "username") String username,
                      @RequestParam(defaultValue = "password")String password,
                      @RequestParam(defaultValue = "email") String email,
                      @RequestParam(defaultValue = "name") String name,
                      Model model){
        //判断电话、密码、用户名、昵称或邮箱是否为空
        if(telphone == null || password == null || username ==null
        || name == null || email == null){
            return ResponseCode.paramIsNull();
        }
        //电话格式校验
        if(telphone.length() != 11){
            return ResponseCode.error("电话格式错误（不是11位）");
        }
        //密码长度约束
        if(password.length() < 3){
            return ResponseCode.error("密码长度小于3位");
        }

        //判断数据库是否已有此注册用户
        UserInfo info = new UserInfo();
        info.setUserName(username);
        //按照条件查询
        List<UserInfo> result = userInfoService.getListByRecord(info);
        //结果不为空，说明此用户名已存在
        if(result != null){
            return ResponseCode.error("此用户已被注册!");
        }


        UserInfo userInfo = new UserInfo();
        userInfo.setUserName(username);
        userInfo.setName(name);
        userInfo.setEmail(email);
        userInfo.setPassword(password);
        userInfo.setTelphone(telphone);
        userInfoService.addInfo(userInfo);
        return ResponseCode.ok(userInfo);

    }









}