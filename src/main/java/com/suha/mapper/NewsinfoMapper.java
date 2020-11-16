package com.suha.mapper;

import com.suha.pojo.NewsInfo;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface NewsinfoMapper extends Mapper<NewsInfo> {

    List<NewsInfo> getListInfoByPage(Map<String,Object> map);

    Integer getListCountByPage(Map<String,Object> map);
}
