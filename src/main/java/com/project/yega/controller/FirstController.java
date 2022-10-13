package com.project.yega.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/main")
public class FirstController {

    @RequestMapping(value="/index" )
    public String bootStrap(){

        return "index";
    }

    @RequestMapping(value="/hi" )
    public String greet(Model model){
        model.addAttribute("userName", "Jiho");
        return "test/greetings";
    }

    @RequestMapping(value="/formPractice")
    public String formPractice(Model model){
        model.addAttribute("userName", "Jiho");
        return "common/formPractice";

    }

    @GetMapping(value="/formSubmit")
    public String formSubmit(Model model , @RequestParam("name") String inputVal){

        System.out.println("컨트롤러에 들어옴?"  );
        System.out.println("name : " + inputVal );

        model.addAttribute("userName", inputVal);

        return "common/greetings";
    }

    @PostMapping(value="/formPostSubmit")
    public String formSubmit(Model model , HttpServletRequest request){

        System.out.println("포스트컨트롤러에 들어옴?"  );

        System.out.println("id : " +  request.getParameter("id"));

        model.addAttribute("userName", request.getParameter("id"));

        return "common/greetings";
    }
}
