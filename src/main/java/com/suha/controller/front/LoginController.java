package com.suha.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("front/login")
    public String login(){
        return "front/login";
    }
    @Autowired
    LoginService loginService;

    @RequestMapping("front/signup")
    public String signup(){
        return "front/signup";
    }

    @RequestMapping("front/news")
    public String news(Integer id){
        System.out.println(id);
        return "front/news";
    }

    @RequestMapping("front/login")
    public ModelAndView login(UserInfo userInfo){
        int id=loginService.login(userInfo.getUserName(),userInfo.getPassword());
        ModelAndView mv=new ModelAndView();
        if(id!=-1){
            mv.setViewName("end/index");
        }else {
            mv.setViewName("front/login");
        }
        return mv;
    }

//    @RequestMapping("front/login")
//    public String loign(@RequestParam(value = "userName",required = false) String userName, @RequestParam(value = "password",required = false) String password, Model model){
//        UserInfo userInfo = loginService.login(userName,password);
//        System.out.println(userName);
//        System.out.println(password);
//        System.out.println("+++++++++++"+userInfo);
//        if (userInfo != null){
//            model.addAttribute("msg","登录成功");
//            return "end/index";
//        }else {
//            model.addAttribute("msg","登录失败");
//            return "front/login";
//        }
//    }

}
