package com.myapp.controller;

import com.myapp.beandao.OrderDao;
import com.myapp.beandao.ServiceDao;
import com.myapp.model.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("Appointment")
public class AppoiontmentController {
    @Autowired
    OrderDao orderDao;
    @Autowired
    ServiceDao serviceDao;
    @RequestMapping("adminorderpage")
    public String adminOrderpanel(Model m){
        m.addAttribute("orderlist",orderDao.AcceptSelectAll());
        return "adminorder";
    }
    @RequestMapping("AppointmentForm")
    public ModelAndView Appointmentform(Model m, HttpSession session){
        int userid=(int)session.getAttribute("userid");
        m.addAttribute(userid);
        m.addAttribute("Services",serviceDao.SelectAll());
        return new ModelAndView("Appointment","command",new Order());
    }
    @RequestMapping("editAppointmentForm/{code}")
    public ModelAndView EditAppointmentform(@PathVariable String code,Model m, HttpSession session){
        m.addAttribute("Services",serviceDao.SelectAll());
        return new ModelAndView("EditAppointment","command",orderDao.selectById(code));
    }
    @RequestMapping(value ="AddAppointment",method = RequestMethod.POST)
    public ModelAndView AddAppointment(@ModelAttribute("command") Order order, HttpSession session){
        int userid=(int)session.getAttribute("userid");
        Date d=new Date();
        if(orderDao.addOrder(order)){
            return new ModelAndView("myorder","myorders",orderDao.SelectByuserId(userid));
        }else {
            return new ModelAndView("Appointment","message","<p class='alert alert-danger text-center' role='alert'> Wrong Date Set!</p>");
        }

    }
    @RequestMapping(value ="EditAppointment",method = RequestMethod.POST)
    public ModelAndView EditAppointment(@ModelAttribute("command") Order order, HttpSession session){
        int userid=(int)session.getAttribute("userid");
        Date d=new Date();
        if(orderDao.editOrder(order)){
            return new ModelAndView("myorder","myorders",orderDao.SelectByuserId(userid));
        }else {
            return new ModelAndView("EditAppointment","message","<p class='alert alert-danger text-center' role='alert'> Wrong Action Set!</p>");
        }

    }
    @RequestMapping("myservices")
    public ModelAndView myorder(HttpSession session,Model m){
        int id=(int)session.getAttribute("userid");
        m.addAttribute("services",serviceDao.SelectAll());
        return new ModelAndView("myorder","myorders",orderDao.SelectByuserId(id));
    }
    @RequestMapping("adminorderpage/{id}")
    public String RejectOrder(@PathVariable String id, Model m){
        orderDao.ChangeStatus(id,"Reject");
        m.addAttribute("orderlist",orderDao.AcceptSelectAll());
        return "adminorder";
    }
    @RequestMapping("requestpage")
    public String adminRequestpanel(Model m){
        m.addAttribute("requestlist",orderDao.PendingSelectAll());
        return "adminrequest";
    }
    @RequestMapping("adminrejectrequestpage/{code}")
    public String RejectadminOrder(@PathVariable String code, Model m){
        orderDao.ChangeStatus(code,"Reject");
        m.addAttribute("orderlist",orderDao.AcceptSelectAll());
        return "adminrequest";
    }
    @RequestMapping("adminAcceptrequestpage/{code}")
    public String AcceptadminOrder(@PathVariable String code, Model m){
        orderDao.ChangeStatus(code,"Accept");
        m.addAttribute("orderlist",orderDao.AcceptSelectAll());
        return "adminorder";
    }
    @RequestMapping("delorder/{id}")
    public String deleteorder(@PathVariable String id,Model model,HttpSession session){
        orderDao.deleteOrder(id);
        int userid=(int)session.getAttribute("userid");
        model.addAttribute("myorders",orderDao.SelectByuserId(userid));
        return "myorder";
    }
}
