package com.project.yega.controller;

import com.project.yega.VO.SampleVO;
import org.apache.coyote.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

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
        return "common/greetings";
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
