package com.suha.service.impl;

import com.suha.mapper.UserInfoLogin;
import com.suha.mapper.UserInfoMapper;
import com.suha.pojo.UserInfo;
import com.suha.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImp implements LoginService {
    @Autowired
    UserInfoLogin userInfoLogin;

    @Override
    public int login(String userName ,String password) {

        UserInfo userInfo = userInfoLogin.findByUserName(userName);

        if(userInfo!=null&&userInfo.getPassword().equals(password)){
            return userInfo.getId();
        }
        return -1;
    }
}
