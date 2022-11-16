package com.project.yega.comn.web;

import org.hibernate.annotations.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.yega.product.web.ProductService;

@Controller
@RequestMapping("/main")
public class HomeController {
	
	@Autowired
	ComnCdService comnCdService;
	@Autowired
	CommonService commonService;
	@Autowired
	ProductService productService;
	
    @RequestMapping(value="/index" )
    public String bootStrap(){

        return "index";
    }

    @RequestMapping(value="/hi" )
    public String greet(Model model){
    	
    	//1.배너이미지 가져오기
    	model.addAttribute("bannerImg", comnCdService.getComnCdByLCdAndUseYn("001","Y",1));
    	//2.추천상품가져오기
    	model.addAttribute("recommandProd",comnCdService.getComnCdByLCdAndUseYn("002","Y",1));
    	
    	//3.베스트상품가져오기
    	model.addAttribute("best5",comnCdService.getComnCdByLCdAndUseYn("003","Y",1));
    	
        return "test/greetings";
    }
    
    
}
