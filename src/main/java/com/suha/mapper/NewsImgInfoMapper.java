package com.suha.mapper;


import com.suha.pojo.NewsImgInfo;
import com.suha.pojo.NewsInfo;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;
@Repository
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


    /**
     * 批量删除
     */
    void delList(Integer[] ids);

    /**
     * 根据类别查询
     */
    List<NewsImgInfo> getListForNav(Map<String, Object> map);
}
