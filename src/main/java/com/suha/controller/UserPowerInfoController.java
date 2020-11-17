package com.suha.controller;

import com.suha.pojo.UserPowerInfo;
import com.suha.service.UserPowerInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import static java.awt.SystemColor.info;

@Controller
@RequestMapping("admin/UserPower")
public class UserPowerInfoController {

    @Autowired
    private UserPowerInfoService us;

    @RequestMapping("{path}")
    public String path(@PathVariable String path) {
        System.out.println("111" + path);
        return "admin/UserPower/" + path;
    }


    //添加用户
    @RequestMapping(value = "addInfo", method = RequestMethod.POST)
    public String addUser(UserPowerInfo info) {
        info.setId(null);
        us.addInfo(info);
        System.out.println(info);
        return "admin";


    }

    //根据id删除用户
    @ResponseBody
    @RequestMapping(value = "delInfo", method = RequestMethod.GET)
    public Map<String, Object> delInfo(Integer id) {
        if (id == null) {
            return ResponseCode.idIsNotNull();
        }
        UserPowerInfo info = us.findInfo(id);
        if (info == null) {
            return ResponseCode.idIsNotExists(id);
        }
        us.delInfo(id);
        return ResponseCode.ok();

    }

    //根据id查询单个用户11
    @RequestMapping(value = "getInfo", method = RequestMethod.GET)
    public String get(Integer id, Model model) {

        if (id == null) {
            return ResponseCode.idIsNotNull().get("data").toString();
        }
        UserPowerInfo info = us.findInfo(id);
        if (info == null) {
            return ResponseCode.idIsNotExists(id).get("data").toString();
        }
        if(info.getPower() == 1){
            info.setPower(2);
        }
        if (info.getCheckUserPower()==1){
            info.setCheckUserPower(62);
        }
        if (info.getCheckNewsPower()==1){
            info.setCheckNewsPower(63);
        }
        if (info.getAdminUserPower()==1){
            info.setAdminUserPower(64);
        }if (info.getAdminNewsPower()==1){
            info.setAdminNewsPower(65);
        }

        model.addAttribute("info", info);
        return "admin/UserPower/edit";
    }

    //修改权限
    @RequestMapping(value = "getName", method = RequestMethod.POST)
    public String getName(@RequestParam("role-input") String idName, @RequestParam("rules[]") String[] rules) {
        Integer id = Integer.valueOf(idName);//字符串转int型
        UserPowerInfo info = us.findInfo(id);
        int flag2 = 0, flag62 = 0, flag63 = 0, flag64 = 0, flag65 = 0;
        //System.out.println("用户权限："+info.getCheckUserPower())
        for (String rule : rules) {
            Integer irule = Integer.valueOf(rule);//字符串转int型
            System.out.println("===" + irule);
            if (irule == 2 && flag2 == 0) {//选中value=2，（1代表勾选，0代表没勾）
                info.setPower(1);
                System.out.println("2" + info);
                flag2 = 1;
            } else if (flag2 == 0) {
                info.setPower(0);
            }
            if (irule == 62 && flag62 == 0) {//选中value=62，（1代表勾选，0代表没勾）
                info.setCheckUserPower(1);
                System.out.println("62" + info);
                flag62 = 1;
            } else if (flag62 == 0) {
                info.setCheckUserPower(0);
            }
            if (irule == 63 && flag63 == 0) {//选中value=63，（1代表勾选，0代表没勾）
                info.setCheckNewsPower(1);
                System.out.println("63" + info);
                flag63 = 1;
            } else if (flag63 == 0) {
                info.setCheckNewsPower(0);
            }
            if (irule == 64 && flag64 == 0) {//选中value=64，（1代表勾选，0代表没勾）
                info.setAdminUserPower(1);
                System.out.println("64" + info);
                flag64 = 1;
            } else if (flag64 == 0) {
                info.setAdminUserPower(0);
            }
            if (irule == 65 && flag65 == 0) {//选中value=65，（1代表勾选，0代表没勾）
                info.setAdminNewsPower(1);
                System.out.println("65" + info);
                flag65 = 1;
            } else if (flag65 == 0) {
                info.setAdminNewsPower(0);
            }
        }
        us.updInfo(info);
        System.out.println("成功" + info);
        return "a";
    }

    @ResponseBody
    @RequestMapping("list")
    public Map<String,Object> getList(@RequestParam(value = "role-input",defaultValue = "1") Integer parentId){
        UserPowerInfo info = new UserPowerInfo();
        info.setId(parentId);
        List<UserPowerInfo> list = us.findByInfo(info);
        System.out.println(list);
        return ResponseCode.ok(list);

    }


}
