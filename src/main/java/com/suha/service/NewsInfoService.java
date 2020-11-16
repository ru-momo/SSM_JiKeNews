package com.suha.service;

import com.suha.mapper.NewsInfoMapper;
import com.suha.pojo.NewsInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class NewsInfoService extends BaseService<NewsInfo>{

    @Autowired
    private NewsInfoMapper nm;
    //重写父类的分页方法
   public Page<NewsInfo> getPageList(String name,Integer pageNum, Integer pageSize){
       return super.getPageList(nm,name,pageNum,pageSize);
   }
}
