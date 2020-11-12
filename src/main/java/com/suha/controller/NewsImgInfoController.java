package com.suha.controller;


import com.suha.pojo.NewsImgInfo;
import com.suha.service.NewsImgInfoService;
import com.suha.util.Page;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("admin/News")
public class NewsImgInfoController {

    @Autowired
    private NewsImgInfoService newsImgInfoService;


    @RequestMapping("{path}")
    public String path(@PathVariable String path) {
        return "admin/News" + path;
    }


    /**
     * 分页查询
     * @param model
     * @param img
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String getInfoByPage(Model model,String img,
                                @RequestParam(defaultValue = "1")Integer pageNum,
                                @RequestParam(defaultValue = "10")Integer pageSize) {
        Page<NewsImgInfo> page = newsImgInfoService.getListInfoByPage(img, pageNum, pageSize);
        model.addAttribute("page", page);
        model.addAttribute("img",img);
        return "admin/News/index";
    }



    /**
     * 删除
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "delInfo", method = RequestMethod.GET)
    public Map<String, Object> delImgInfo(Integer id){
        //判断id是否为空
        if(id == null){
            return ResponseCode.idIsNotNull();
        }
        //根据id查询具体图片信息
        NewsImgInfo info = newsImgInfoService.getImgInfoById(id);
        //判断该信息是否存在
        if(info == null){
            return ResponseCode.idIsNotExists(id);
        }
        //执行删除操作
        newsImgInfoService.delNewsImgInfo(id);
        return ResponseCode.ok();
    }











}
