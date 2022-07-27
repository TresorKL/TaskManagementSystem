package com.example.taskmanagementsystem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TaskController {

    @RequestMapping("/")
    public String mainPage(){

        return "login.html";
    }

    @PostMapping("register")
    public ModelAndView gegisterUder(){

        ModelAndView mv = new ModelAndView();


        mv.setViewName("login.html");
        return mv;
    }
}
