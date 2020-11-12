package com.suha.mapper;


import com.suha.pojo.NewsImgInfo;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface NewsImgInfoMapper extends Mapper<NewsImgInfo> {

    /**
     * 分页查询
     */
    List<NewsImgInfo> getListInfoByPage(Map<String, Object> map);


    /**
      *  根据条件，查询数据总量
	  *
     */
    Integer getListCountByPage(Map<String, Object> map);



}
