package com.suha.mapper;

import com.suha.pojo.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

@Repository
public interface UserInfoMapper extends Mapper<UserInfo>, Page<UserInfo> {

    /**
     * 分页查询
     */
    List<UserInfo> getListInfoByPage(Map<String, Object> map);


    /**
     *  根据条件，查询数据总量
     *
     */
    Integer getListCountByPage(Map<String, Object> map);



}
