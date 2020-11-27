package com.suha.controller.end;

import com.suha.pojo.NewsInfo;
import com.suha.service.NewsInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
public class pagesAddDocController {

    @Autowired
    private NewsInfoService newsInfoService;

    //接收表单数据并存储数据库
    @ResponseBody
    @PostMapping("end/pagesAddDoc")
    public Map<String, Object> pagesAddDoc(NewsInfo newsInfo){
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(date);
        Date date1 = null;
        try {
            date1 = simpleDateFormat.parse(format);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        newsInfo.setPubdate(date1);
        newsInfoService.addInfo(newsInfo);

        return ResponseCode.ok();
    }

    //删除图片
    @RequestMapping("end/pagesAddDoc/del")
    public String del(){
        return "";
    }

    // 上传图片
    @RequestMapping("end/pagesAddDoc/upload")
    public String upload(){

        return "";
    }
}

