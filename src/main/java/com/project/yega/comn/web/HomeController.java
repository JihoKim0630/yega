package com.project.yega.comn.web;

import org.hibernate.annotations.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class HomeController {
	
	@Autowired
	ComnCdService comnCdService;
	@Autowired
	CommonService commonService;
	
    @RequestMapping(value="/index" )
    public String bootStrap(){

        return "index";
    }

    @RequestMapping(value="/hi" )
    public String greet(Model model){
    	
    	comnCdService.getComnCdByLCdAndUseYn("001","Y",1);
    	//1.배너이미지 가져오기
    	//2.
    	
        model.addAttribute("userName", "Jiho");
        model.addAttribute("bannerImg", comnCdService.getComnCdByLCdAndUseYn("001","Y",1));
        return "test/greetings";
    }
    
    
}
