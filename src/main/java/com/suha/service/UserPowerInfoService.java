package com.suha.service;

import com.suha.mapper.UserPowerInfoMapper;
import com.suha.pojo.UserPowerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Service
public class UserPowerInfoService {

    @Autowired
    private UserPowerInfoMapper upim;

    private Mapper mapper;


    //添加
    public void addInfo(UserPowerInfo info){
        upim.insert(info);
    }

    //删除
    public  void delInfo(Integer id){
        upim.deleteByPrimaryKey(id);
    }

    //修改
    public void updInfo(UserPowerInfo info){
        upim.updateByPrimaryKeySelective(info);
    }

    //查询
    public UserPowerInfo findInfo(Integer id){

        UserPowerInfo info = upim.selectByPrimaryKey(id);
        return info;
    }

    //
    public List<UserPowerInfo> findByInfo(UserPowerInfo info){
        UserPowerInfo record = new UserPowerInfo();
        return upim.select(record);


    }

    //查询所有
    public List<UserPowerInfo> queryUser(){
        List<UserPowerInfo> list = upim.selectAll();
        return list;
    }

    //public Page<UserPowerInfo> getListInfoByPage

}
