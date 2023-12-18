package com.myapp.controller;

import com.myapp.beandao.UserDao;
import com.myapp.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    UserDao userDao;
    @RequestMapping("/signup")
    public ModelAndView reg(){

        return new ModelAndView("Register","command",new User());
    }
    @RequestMapping("test")
    public void test(){
        User u=userDao.getUserByid(3);
        u.setNic("fgff");
        userDao.edituser(u);
    }
    @RequestMapping("/signin")
    public ModelAndView Log(){

        return new ModelAndView("login","command1",new User());
    }
    @RequestMapping("userpage")
    public String adminUserpanel(Model model){
        model.addAttribute("userlist",userDao.showAll());
        return "adminuser";
    }
    @RequestMapping(value="/login",method = RequestMethod.POST)
    public ModelAndView Login(@ModelAttribute("loguser") User loguser, Model m, HttpSession session){
        User loginuser=userDao.validate(loguser.getEmail(),loguser.getPassword());
        if(loginuser!=null){
            session.setAttribute("userid",loginuser.getId());
            session.setAttribute("userName",loginuser.getEmail());
            String rooting=loginuser.getId()==1?"adminhome":"userveiw";
            return new ModelAndView(rooting,"lous",loginuser);
        }else{
            return new ModelAndView("login","message","<p class='alert alert-danger text-center' role='alert'> Login is Failed</p>");

        }

    }
    @RequestMapping("signout")
    public String signout(HttpSession session){
        session.invalidate();
        return "login";
    }
    @RequestMapping(value="/register",method = RequestMethod.POST)
    public ModelAndView Register(@ModelAttribute("user") User user){
        if(userDao.saveuser(user)){

            return new ModelAndView("login","message","<p class='alert alert-success text-center' role='alert'> Registertion is successFul</p>");
        }else{
            return new ModelAndView("Register","message","<p class='alert alert-danger text-center' role='alert'> Registertion is Failed</p>");
        }
    }
    @RequestMapping(value = "edituser/{id}",method = RequestMethod.GET)
    public  ModelAndView edit(@PathVariable int id,Model m){
        User useredit=userDao.getUserByid(id);
        return new ModelAndView("edituserdetails","command",useredit);
    }
    @RequestMapping( "showuser")
    public  ModelAndView show(HttpSession session){
        int id=(int)session.getAttribute("userid");
        String rooting= id==1?"adminhome":"userveiw";
        return new ModelAndView(rooting,"lous",userDao.getUserByid(id));
    }
    @RequestMapping(value = "deleteuser/{id}")
    public ModelAndView deleteuser(@PathVariable int id){
        if(userDao.deleteuser(id)) {
            return new ModelAndView("login", "message", "<p class='alert alert-warning text-center' role='alert'> Your account is Deleted!</p>");
        }
        else{
            return new ModelAndView("deleteuser", "message", "<p class='alert alert-danger text-center' role='alert'> Action failed!</p>");
        }
        }
        @RequestMapping( value ="updateuser",method = RequestMethod.POST)
        public ModelAndView updateuseDetails(@ModelAttribute("user") User user,Model m){
            System.out.println(user.getId());
                if(userDao.edituser(user)) {
                    return new ModelAndView("userveiw", "lous", user);
                }else{
                    m.addAttribute("command",user);
                    return new ModelAndView("edituserdetails", "message", "<p class='alert alert-danger text-center' role='alert'> Action failed!</p>");
              }
        }
}
