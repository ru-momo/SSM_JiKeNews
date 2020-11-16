package com.suha.mapper;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

public interface PageMapper<T> {

    List<T> getListInfoByPage(Map<String,Object> map);

    //查询总数量
    Integer getListCountByPage(Map<String ,Object> map);
}
