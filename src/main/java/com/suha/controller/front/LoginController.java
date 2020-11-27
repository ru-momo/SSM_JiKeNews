package com.suha.controller.front;

import com.suha.mapper.UserInfoMapper;
import com.suha.pojo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private UserInfoMapper userInfoMapper;

    @RequestMapping("front/signup")
    public String signup(){
        return "front/signup";
    }

    @RequestMapping("front/news")
    public String news(Integer id){
        System.out.println(id);
        return "front/news";
    }

    /**
     * 登录
     * @param userName
     * @param password
     * @param model
     * @return
     */
    @RequestMapping("front/login")
    //防止参数没有传递给controller，抛出参数绑定异常。
    public String loign(@RequestParam(value = "userName",required = false) String userName, @RequestParam(value = "password",required = false) String password, Model model){
        UserInfo userInfo = userInfoMapper.login(userName,password);
        System.out.println(userName);
        System.out.println(password);
        System.out.println("+++++++++++"+userInfo);
        if (userInfo != null){
            model.addAttribute("msg","登录成功");
            return "/";
        }else {
            model.addAttribute("msg","登录失败");
            return "front/login";
        }
    }

}
