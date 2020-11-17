package com.suha.controller.front.web;

import com.suha.pojo.NewsImgInfo;
import com.suha.pojo.NewsInfo;
import com.suha.service.NewsImgInfoService;
import com.suha.service.NewsinfoService;
import com.suha.util.Page;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
public class NavigationController {

    @Autowired
    private NewsinfoService ns;

    @Autowired
    private NewsImgInfoService nis;

    /**
     * 获取新闻
     *
     * @param name
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "getNewsList", method = RequestMethod.POST)
    public Map<String, Object> getNewsList(String name,
                                           @RequestParam(defaultValue = "1") Integer pageNum,
                                           @RequestParam(defaultValue = "10") Integer pageSize) {
        Page<NewsInfo> pageList = ns.getPageList(name, pageNum, pageSize);
        return ResponseCode.ok(pageList);
    }

    /**
     * 获取新闻图片
     * @param name
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "getNewsImgList", method = RequestMethod.POST)
    public Map<String, Object> getNewsImgList(String name,
                                              @RequestParam(defaultValue = "1") Integer pageNum,
                                              @RequestParam(defaultValue = "10") Integer pageSize) {
        Page<NewsImgInfo> listInfoByPage = nis.getListInfoByPage(null, pageNum, pageSize);
        return ResponseCode.ok(listInfoByPage);
    }

    /**
     * 根据类型获取新闻
     * @param type
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "getListForNav", method = RequestMethod.POST)
    public Map<String, Object> getListForNav(String type,
                                             @RequestParam(defaultValue = "1") Integer pageNum,
                                             @RequestParam(defaultValue = "10") Integer pageSize) {
        List<NewsInfo> listForNav1 = ns.getListForNav(type, pageNum, pageSize);
        List<NewsImgInfo> listForNav2 = nis.getListForNav(type, pageNum, pageSize);
        ArrayList<Object> list = new ArrayList<>();
        list.add(listForNav1);
        list.add(listForNav2);
        return ResponseCode.ok(list);
    }

}
