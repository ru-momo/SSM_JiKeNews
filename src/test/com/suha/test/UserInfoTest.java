package com.suha.test;
import com.suha.pojo.UserInfo;
import com.suha.service.UserInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/application-*.xml")
public class UserInfoTest {
    @Autowired
    private UserInfoService us;

    @Test
    public void add(){
        UserInfo userInfo = new UserInfo();
        userInfo.setUserName("HHH");
        us.insertInfo(userInfo);
        System.out.println(userInfo);
    }



}

