package com.example.omikuji.controller;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    //renders form
    @RequestMapping("/")
    public String index(){
        return "index.jsp";
    }

    
    @PostMapping("/submit")
    public String createPoem(
        @RequestParam("numbers")String numbers,
        @RequestParam("city")String city,
        @RequestParam("person")String person,
        @RequestParam("hobby")String hobby,
        @RequestParam("living")String living,
        @RequestParam("nice")String nice, HttpSession session
    ){
        session.setAttribute("numbers",numbers);
        session.setAttribute("city",city);
        session.setAttribute("person",person);
        session.setAttribute("hobby",hobby);
        session.setAttribute("living",living);
        session.setAttribute("nice",nice);
        return "redirect:/show";
    }
    
    @RequestMapping("/show")
    public String show(){
        return "show.jsp";
    }
    
}
