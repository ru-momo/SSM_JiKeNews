package com.suha.controller.front;

import com.suha.mapper.UserInfoMapper;
import com.suha.pojo.UserInfo;
import com.suha.service.UserInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping("front/signup")
    public String signup() {
        return "front/signup";
    }

    @RequestMapping("front/news")
    public String news(Integer id) {
        System.out.println(id);
        return "front/news";
    }

    @RequestMapping("front/{path}")
    public String getPath(@PathVariable String path) {
        return "front/" + path;
    }

    /**
     * 登录
     * @param userName
     * @param password
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "front/login", method = RequestMethod.POST)
    //防止参数没有传递给controller，抛出参数绑定异常。
    public Map<String, Object> loign(@RequestParam(value = "userName", required = false) String userName,
                                     @RequestParam(value = "password", required = false) String password,
                                     HttpSession session) {
        UserInfo userInfo = userInfoMapper.login(userName, password);
        System.out.println(userName);
        System.out.println(password);
        if (userInfo != null) {
            session.setAttribute("user", userName);
            return ResponseCode.ok("登录成功，账号为：" + userName);
        } else {
            return ResponseCode.error("用户或者密码不正确");
        }
    }

    /**
     * 注册
     * @param userName
     * @param password
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "front/signup", method = RequestMethod.POST)
    //防止参数没有传递给controller，抛出参数绑定异常。
    public Map<String, Object> signup(@RequestParam(value = "userName", required = false) String userName,
                                     @RequestParam(value = "password", required = false) String password) {
        System.out.println(userName);
        System.out.println(password);
        UserInfo userInfo = new UserInfo();
        userInfo.setUserName(userName);
        List<UserInfo> infoByname = userInfoService.getInfoByname(userInfo);
        if (infoByname.size() != 0) {
            return ResponseCode.error("注册失败，账号已存在！");
        } else {
            userInfo.setPassword(password);
            userInfoService.addInfo(userInfo);
            return ResponseCode.ok("注册成功，账号为：" + userName);
        }
    }

    /**
     * 前端退出登录
     * @param session
     * @return
     */
    @RequestMapping(value = "front/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.setAttribute("user", "");
        return "redirect:/index.jsp";
    }



}
