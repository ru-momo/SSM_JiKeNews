package com.suha.test;

import com.suha.pojo.NewsImgInfo;
import com.suha.service.NewsImgInfoService;
import com.suha.util.Page;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/application-*.xml")
public class NewsImgInfoTest {

    @Autowired
    private NewsImgInfoService newsImgInfoService;


    //分页查询
    @Test
    public void getInfoByPage(){
        Page<NewsImgInfo> page = newsImgInfoService.getListInfoByPage(null, 1, 4);
        System.out.println(page
        );

    }
}
