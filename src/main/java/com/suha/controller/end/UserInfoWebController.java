package com.suha.controller.end;

import com.mysql.cj.util.StringUtils;
import com.suha.pojo.UserInfo;
import com.suha.service.UserInfoService;
import com.suha.util.Page;
import com.suha.util.ResponseCode;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "end/")
public class UserInfoWebController {
    @Autowired
    private UserInfoService us;

    /**
     * 分页查询
     * @param model
     * @param name
     * @param pageNum
     * @param pageSize
     * @return
     */

    @RequestMapping(value = "userinfo",method = RequestMethod.GET)
    public String getInfoByPage(Model model, String name,
                                @RequestParam(defaultValue = "1")Integer pageNum,
                                @RequestParam(defaultValue = "10")Integer pageSize) {
        Page<UserInfo> page = us.getListInfoByPage(name, pageNum, pageSize);
        model.addAttribute("page", page);
        model.addAttribute("name",name);
        return "end/userinfo";
    }

    /**
     * 添加用户
     * @param userInfo
     * @return
     */
    @ResponseBody
    @RequestMapping("adduser")
    public Map<String,Object> adduser(UserInfo userInfo){
        Map<String ,Object> map = new HashMap<String , Object>();
        //校验
        if (userInfo == null){
            map.put("user","参数异常");
            return map;
        }
        if (StringUtils.isNullOrEmpty(userInfo.getUserName())||
            StringUtils.isNullOrEmpty(userInfo.getEmail())||
            StringUtils.isNullOrEmpty(userInfo.getInformation())||
            StringUtils.isNullOrEmpty(userInfo.getPassword())||
            StringUtils.isNullOrEmpty(userInfo.getName())||
            StringUtils.isNullOrEmpty(userInfo.getTelphone())){
            map.put("user","用户信息不完整");
            return map;
        }
        us.addInfo(userInfo);
        map.put("user","ok");
        return map;
    }

    /**
     * 用户信息删除
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "del")
    public Map<String ,Object> del(Integer id){
        //id是否为空
        if (id==null){
            return ResponseCode.idIsNotNull();
        }
        UserInfo info = us.getInfoById(id);
        if (info==null){
            return ResponseCode.idIsNotExists(id);
        }
        us.delInfo(id);
        return ResponseCode.ok();
    }

    //跳转到修改界面
    @RequestMapping("/toUpdataUser")
    public String getUserId(int id,Model model) {
        UserInfo userInfo = us.getInfoById(id);
        model.addAttribute("userInfo", userInfo);
        return "end/userupd";
    }
    //修改
    @RequestMapping("/updataUser")
    public String upd(UserInfo userInfo){
        us.updInfo(userInfo);
        return "redirect:/end/userinfo";
    }
    /**
     * 根据Id查询
     * @param id
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value="userInfoId/{id}")
    public Map<String, Object> queryWaresById(@PathVariable Integer id) throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        UserInfo userInfo = us.getInfoById(id);
        System.out.println(userInfo);
        map.put("userInfo", userInfo);
        return map ;
    }






}
