package com.myapp.controller;

import com.myapp.beandao.ServiceDao;
import com.myapp.model.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("service")
public class ServiceController {
    @Autowired
    ServiceDao serviceDao;
    @RequestMapping("servicepage")
    public ModelAndView adminServicepanel(){
        return new ModelAndView("adminService","servicelist",serviceDao.SelectAll());
    }
    @RequestMapping("serviceviewpage")
    public ModelAndView userServicepanel(){
        return new ModelAndView("serviceveiwpage","servicedetailslist",serviceDao.SelectAll());
    }
    @RequestMapping("Serviceform")
    public ModelAndView service(Model m){
        return new ModelAndView("addservice","command",new Service());
    }
    @RequestMapping(value = "saveservice",method = RequestMethod.POST)
    public ModelAndView addservice(@ModelAttribute("service")Service service,Model m){
        if(serviceDao.addservice(service)){
            return new ModelAndView("adminService","servicelist",serviceDao.SelectAll());
        }else{
            return new ModelAndView("addservice","message","<p class='alert alert-danger text-center' role='alert'> Error!</p>");
        }

    }
    @RequestMapping(value = "deleteservice/{code}")
    public ModelAndView deleteservice(@PathVariable String code,Model model){
        String message;
        if(serviceDao.deleteservice(code)){
           message="<p class='alert alert-warning text-center' role='alert'> Service Deleted!</p>";
        }else{
            message="<p class='alert alert-danger text-center' role='alert'> Error!</p>";
        }
        model.addAttribute("servicelist",serviceDao.SelectAll());
        return new ModelAndView("adminService","message", message);
    }
   @RequestMapping("editservice/{code}")
    public ModelAndView editform(@PathVariable String code){
        return new ModelAndView("editadminservice","command",serviceDao.selectById(code));
    }
    @RequestMapping("updateService")
    public ModelAndView updateService(@ModelAttribute("command") Service service,Model m){
        m.addAttribute("idsads",service.getServicename());
        if(serviceDao.editservice(service)){
            return new ModelAndView("adminService","servicelist",serviceDao.SelectAll());
        }else{
            return new ModelAndView("editadminservice","message","<p class='alert alert-danger text-center' role='alert'> Error!</p>");
        }
    }

}
