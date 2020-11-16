package com.suha.test;

import com.suha.pojo.NewsImgInfo;
import com.suha.service.NewsImgInfoService;
import com.suha.util.Page;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/application-*.xml")
public class NewsImgInfoTest {

    @Autowired
    private NewsImgInfoService newsImgInfoService;


    //分页查询
    @Test
    public void getInfoByPage(){
        Page<NewsImgInfo> page = newsImgInfoService.getListInfoByPage(null, 1, 4);
        System.out.println(page);

    }


    @Test
    public void queryById(){
        NewsImgInfo info = newsImgInfoService.getInfoById(100);
        System.out.println(info);

    }



    //按条件查询
    @Test
    public void query(){
        NewsImgInfo info = new NewsImgInfo();
        info.setId(8);
        List<NewsImgInfo> img = newsImgInfoService.getListByImg(info);
        System.out.println(img);
    }





    //查询所有
    @Test
    public void getAllInfo(){
        List<NewsImgInfo> info = newsImgInfoService.getListImgInfo();
        for (NewsImgInfo list: info) {
            System.out.println(list);
        }
    }



    @Test
    public void del(){
        newsImgInfoService.delNewsImgInfo(100);
    }
}
