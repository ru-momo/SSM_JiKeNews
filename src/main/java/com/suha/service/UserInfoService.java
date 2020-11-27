package com.suha.service;

import com.mysql.cj.util.StringUtils;
import com.suha.mapper.UserInfoMapper;
import com.suha.pojo.UserInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserInfoService extends BaseService<UserInfo>{


    @Autowired
    private UserInfoMapper um;

    public Page<UserInfo> getListInfoByPage(String name , Integer pageNum, Integer pageSize){
        return super.getPageList(um, name, pageNum, pageSize);
    }



}
