package com.suha.controller.end;

import com.suha.pojo.UserInfo;
import com.suha.pojo.UserPowerInfo;
import com.suha.service.UserInfoService;
import com.suha.service.UserPowerInfoService;
import com.suha.util.ResponseCode;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private UserPowerInfoService userPowerInfoService;


    @RequestMapping("end/{path}")
    public String getPath(@PathVariable String path){
        return "end/"+path;
    }

    /**
     * 后台登录
     * @param name
     * @param pass
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "end/login", method = RequestMethod.POST)
    public Map<String, Object> endLogin(@RequestParam(name = "username") String name,
                                        @RequestParam(name = "password") String pass,
                                        HttpSession session){
        UserInfo userInfo = new UserInfo();
        userInfo.setUserName(name);
        userInfo.setPassword(pass);
        List<UserInfo> infoByname = userInfoService.getInfoByname(userInfo);
        if (infoByname.size() == 0) {
            return ResponseCode.error("账号密码不正确！");
        }else {
            userInfo = infoByname.get(0);
            Integer id = userInfo.getId();
            UserPowerInfo powerInfo = userPowerInfoService.findInfo(id);
            if (powerInfo == null) {
                return ResponseCode.error("后台数据出错！");
            }else {
                Integer power = powerInfo.getPower();
                if (power == 1) {
                    session.setAttribute("user",name);
                    return ResponseCode.ok("登录成功！登录账号为："+name);
                }else {
                    return ResponseCode.error("您还没有开通后台权限！");
                }
            }
        }
    }

    @RequestMapping(value = "end/pagesProfileLogin")
    public String pagesProfileLogin(HttpSession session, Model model){
        String user = (String)session.getAttribute("user");
        UserInfo userInfo = new UserInfo();
        userInfo.setUserName(user);
        List<UserInfo> infoByname = userInfoService.getInfoByname(userInfo);
        model.addAttribute("userInfo",infoByname.get(0));
        return "end/pagesProfileLogin";
    }

}


