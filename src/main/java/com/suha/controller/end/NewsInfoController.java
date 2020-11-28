package com.suha.controller.end;

import com.suha.pojo.NewsInfo;
import com.suha.service.NewsInfoService;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "end/")
public class NewsInfoController {

    @Autowired
    private NewsInfoService newsInfoService;

    /**
     * 获取分页数据
     * @param model
     * @param name
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "pagesnews", method = RequestMethod.GET)
    public String getPagesNews(Model model, String name,
                               @RequestParam(defaultValue = "1")Integer pageNum,
                               @RequestParam(defaultValue = "10")Integer pageSize){
        Page<NewsInfo> page = newsInfoService.getPageList(name, pageNum, pageSize);
        model.addAttribute("page", page);
        model.addAttribute("name", name);
        System.out.println("到这了~~~~~~~~~");
        return "end/pagesnews";
    }



}
