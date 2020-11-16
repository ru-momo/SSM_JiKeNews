package com.suha.service;

import com.suha.pojo.NewsInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsinfoService extends BaseService<NewsInfo>{
//    @Autowired
//    private NewsinfoMapper nm;
//    //重写父类的分页方法
//   public Page<NewsInfo> getPageList(String name,Integer pageNum, Integer pageSize){
//       return super.getPageList(nm,name,pageNum,pageSize);
//   }
}
