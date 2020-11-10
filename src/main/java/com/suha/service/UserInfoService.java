package com.suha.service;

import com.suha.mapper.UserInfoMapper;
import com.suha.pojo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoService {

    @Autowired
    private UserInfoMapper userInfoMapper;


    //查询所有
    public List<UserInfo> queryAll(){
        return  userInfoMapper.selectAll();
    }


    //根据主键进行查询
    public UserInfo getInfoById(Integer id){
       return  (UserInfo)userInfoMapper.selectByPrimaryKey(id);
    }



    //按照条件查询
    public List<UserInfo> getInfoByname(UserInfo userInfo){
       return  userInfoMapper.select(userInfo);

    }


    //添加用户信息
    public void insertInfo(UserInfo userInfo){
        userInfoMapper.insert(userInfo);
    }



    //根据id删除用户信息
    public void deleteInfo(Integer id){
        userInfoMapper.deleteByPrimaryKey(id);
    }



    //修改用户信息
    public void updateInfo(UserInfo userInfo){
        userInfoMapper.updateByPrimaryKey(userInfo);
    }





}
