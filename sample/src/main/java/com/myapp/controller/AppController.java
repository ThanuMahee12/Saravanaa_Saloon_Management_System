package com.myapp.controller;

import com.myapp.beandao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Appcontrol")
public class AppController {
    @Autowired
    UserDao userDao;
   @RequestMapping("admin")
    public String adminpanel(){
        return "adminhome";
    }
    @RequestMapping("Aboutus")
    public String Aboutus(){
        return "aboutus";
    }

}
