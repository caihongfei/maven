package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;


@Controller
public class Usercontroller {
    @Autowired
    private UserService userservice;
    @RequestMapping("/getAll")
    public String getAll(HttpServletRequest request){
        List<User> list = userservice.getAll();
        request.setAttribute("user",list);
        System.out.println(list.toString()+"_________________________________");
        return "forward:/index.jsp";
    }

    @RequestMapping("/add")
    public String add(User user){
        userservice.add(user);
        return "redirect:/getAll.do";
    }

    @RequestMapping("/delete")
    public String delete(int id){
        userservice.delete(id);
        return "redirect:/getAll.do";
    }

    @RequestMapping("/update")
    public String update(User user){
        userservice.update(user);
        return "redirect:/getAll.do";
    }

    @RequestMapping("/selectOne")
    public String selectOne(int id, HttpServletRequest request){
        request.setAttribute("user",userservice.selectOne(id));
        return "forward:/update.jsp";
    }

    @RequestMapping("/delete2")
    public String delete2(int [] id){
        userservice.delete2(id);
        System.out.println(Arrays.toString(id));
        return "redirect:/getAll.do";
    }
}
