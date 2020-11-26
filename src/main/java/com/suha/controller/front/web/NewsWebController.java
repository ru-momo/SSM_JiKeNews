package com.suha.controller.front.web;

import com.suha.pojo.NewsImgInfo;
import com.suha.pojo.NewsInfo;
import com.suha.service.NewsImgInfoService;
import com.suha.service.NewsInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
public class NewsWebController {

    @Autowired
    private NewsInfoService newsInfoService;

    @Autowired
    private NewsImgInfoService newsImgInfoService;

    @RequestMapping(value = "front/getNewsInfo", method = RequestMethod.POST)
    public Map<String, Object> getNewsInfo(Integer id) {
        List<Object> list = new ArrayList<>();
        if (id == 0 || id == null) {
            return ResponseCode.error("id参数错误");
        }
        NewsInfo infoById = newsInfoService.getInfoById(id);
        NewsImgInfo infoById1 = newsImgInfoService.getInfoById(id);
        if (infoById == null || infoById1 == null) {
            return ResponseCode.error("id不存在");
        }
        list.add(infoById);
        list.add(infoById1);
        return ResponseCode.ok(list);
    }
}
