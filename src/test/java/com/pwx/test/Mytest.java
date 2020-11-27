package com.pwx.test;

import com.suha.pojo.UserPowerInfo;
import com.suha.service.UserPowerInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/application-*.xml")
public class Mytest {


    @Autowired
    private UserPowerInfoService us;

    @Test
    public void test01(){
        UserPowerInfo info = us.findInfo(1);
        System.out.println("info="+info);
    }




}
