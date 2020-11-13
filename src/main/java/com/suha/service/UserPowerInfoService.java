package com.suha.service;

import com.suha.mapper.UserPowerInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPowerInfoService {

    @Autowired
    private UserPowerInfoMapper upim;

}
