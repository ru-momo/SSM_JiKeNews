package com.suha.service;

import com.mysql.cj.util.StringUtils;
import com.suha.mapper.NewsinfoMapper;
import com.suha.pojo.NewsInfo;
import com.suha.pojo.UserInfo;
import com.suha.util.Page;
import com.sun.nio.sctp.MessageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewsinfoService extends BaseService<NewsInfo>{


    @Autowired
    private NewsinfoMapper newsinfoMapper;

    // 分页查询 name指
    public Page<NewsInfo> getListInfoByPage(String name, Integer pagenum, Integer pageSize){
        return super.getPageList(newsinfoMapper,name,pagenum,pageSize);
}

}
