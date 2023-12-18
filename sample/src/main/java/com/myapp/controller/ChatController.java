package com.myapp.controller;

import com.myapp.beandao.ChatDao;
import com.myapp.beandao.UserDao;
import com.myapp.model.Chat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("chats")
public class ChatController {
    @Autowired
    ChatDao chatdao;
    @Autowired
    UserDao userDao;
    @RequestMapping("contactus")
    public String contactus(Model model, HttpSession session){
        int userid=(int)session.getAttribute("userid");
        model.addAttribute("command",new Chat());
        model.addAttribute("chats",chatdao.userchatAll(userid));
        model.addAttribute("user",userDao.getUserByid(userid));
        return "contactus";
    }
    @RequestMapping(value = "sendmessage",method = RequestMethod.POST)
    public String send(@ModelAttribute("command") Chat chat,Model m,HttpSession session){
        chatdao.sendmessage(chat);
        int userid=(int)session.getAttribute("userid");
        m.addAttribute("chats",chatdao.userchatAll(userid));
        return "contactus";
    }
    @RequestMapping("adminchat")
    public ModelAndView adminchat(Model m){
        m.addAttribute("command",new Chat());
        return new ModelAndView("adminchat","adminchats",chatdao.selecAll());
    }
    @RequestMapping(value = "replymessage",method = RequestMethod.POST)
    public String reply(@ModelAttribute("command") Chat chat,Model m,HttpSession session){
        chatdao.replymessage(chat);
        m.addAttribute("adminchats",chatdao.selecAll());
        return "adminchat";
    }
}
