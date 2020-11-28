package com.suha.controller.end;

import com.suha.pojo.UserPowerInfo;
import com.suha.service.UserPowerInfoService;
import com.suha.util.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "end/")
public class UserPowerInfoController {

    @Autowired
    private UserPowerInfoService us;

    //修改权限
    @RequestMapping(value = "changePower", method = RequestMethod.POST)
    public String changePower(@RequestParam("role-input") String idName, @RequestParam("rules[]") String[] rules) {
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
        return "end/pagesRabc";
    }

}
