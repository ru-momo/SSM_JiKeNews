package com.suha.mapper;


import com.suha.pojo.UserInfo;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface UserInfoMapper extends Mapper<UserInfo>{

    List<UserInfo> getListInfoByPage(Map<String, Object> map);

    Integer getListCountByPage(Map<String,Object> map);
}
