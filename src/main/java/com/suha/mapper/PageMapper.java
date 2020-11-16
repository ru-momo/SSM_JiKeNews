package com.suha.mapper;

import java.util.List;
import java.util.Map;


//公用分页mapper
public interface PageMapper<T> {
    //    分页查询
    List<T> getListInfoByPage(Map<String,Object> map);
    //根据数量查询总数据量
    Integer getListCountByPage(Map< String,Object> map);
}

