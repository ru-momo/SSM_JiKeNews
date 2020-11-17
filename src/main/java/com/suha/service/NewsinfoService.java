package com.suha.service;

import com.mysql.cj.util.StringUtils;
import com.suha.mapper.NewsInfoMapper;
import com.suha.pojo.NewsInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewsinfoService extends BaseService<NewsInfo>{
    @Autowired
    private NewsInfoMapper nm;
    //重写父类的分页方法
   public Page<NewsInfo> getPageList(String name,Integer pageNum, Integer pageSize){
       return super.getPageList(nm,name,pageNum,pageSize);
   }

    /**
     * 根据类型查询
     * @param type
     * @param pageNum
     * @param pageSize
     * @return
     */
    public List<NewsInfo> getListForNav(String type, Integer pageNum, Integer pageSize){
        Map<String, Object> map = new HashMap<>();
        if(!StringUtils.isNullOrEmpty(type)){
            map.put("type", type);
        }
        if(pageNum != null && pageSize != null){
            map.put("startIndex", (pageNum-1)*pageSize);
            map.put("pageSize", pageSize);
        }
        return nm.getListForNav(map);
    }
}
