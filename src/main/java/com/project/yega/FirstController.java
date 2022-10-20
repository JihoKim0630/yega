package com.project.yega;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

    
}
