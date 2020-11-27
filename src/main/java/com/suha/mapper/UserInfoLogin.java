package com.suha.mapper;

import com.suha.pojo.UserInfo;

public interface UserInfoLogin {
    UserInfo findByUserName(String userName);
}
