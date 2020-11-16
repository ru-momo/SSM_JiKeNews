package com.suha.test;


import com.suha.pojo.UserInfo;
import com.suha.service.UserInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/application-*.xml")
public class UserInfoTest {

    @Autowired
    private UserInfoService userInfoService;


    @Test
    public void addInfo(){
        UserInfo info = new UserInfo();
        info.setUserName("张三");
        info.setPassword("china_No_1");
        info.setInformation("bingo");
        userInfoService.insertInfo(info);
    }


    @Test
    public void updInfo(){
        UserInfo info = new UserInfo();
        info.setId(2);
        info.setUserName("小伙");
        info.setPassword("121212212");
        userInfoService.updateInfo(info);
    }


    @Test
    public void delInfo(){
        userInfoService.deleteInfo(2);
    }

    @Test
    public void queryInfo(){
        UserInfo info = userInfoService.getInfoById(1);
        System.out.println(info);
    }


    @Test
    public void queryAll(){
        List<UserInfo> list = userInfoService.queryAll();
        for (UserInfo info:list)
        {
            System.out.println(info);
        }
    }


    @Test
    public void queryByName(){
        UserInfo info = new UserInfo();
        info.setUserName("王小二");
        List<UserInfo> infoList = userInfoService.getInfoByname(info);
        for (UserInfo item :infoList) {
            System.out.println(item);
        }
    }
}
