package com.suha.service;

import com.mysql.cj.util.StringUtils;
import com.suha.mapper.NewsImgInfoMapper;
import com.suha.pojo.NewsImgInfo;
import com.suha.pojo.NewsInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class NewsImgInfoService extends BaseService<NewsImgInfo>{

    //自动注入
    @Autowired
    private NewsImgInfoMapper newsImgInfoMapper;

    public Page<NewsImgInfo> getPageList(String name, Integer pageNum, Integer pageSize){
        return super.getPageList(newsImgInfoMapper,name,pageNum,pageSize);
    }

    /**
     * 批量删除
     * @param ids
     */
    public void deleteList(Integer[] ids){
        newsImgInfoMapper.delList(ids);
    }


    public List<NewsImgInfo> getListForNav(String type, Integer pageNum, Integer pageSize){
        Map<String, Object> map = new HashMap<>();
        if(!StringUtils.isNullOrEmpty(type)){
            map.put("type", type);
        }
        if(pageNum != null && pageSize != null){
            map.put("startIndex", (pageNum-1)*pageSize);
            map.put("pageSize", pageSize);
        }
        return newsImgInfoMapper.getListForNav(map);
    }
}
