package com.project.yega.category.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.yega.category.dto.CategoryDTO;
import com.project.yega.entity.CategoryEntity;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Data
@Controller
@RequestMapping("/category")
public class CategoryController {
	
	private final CategoryService categoryService;
	/*
	 * @GetMapping("/insertCategory") public CategoryEntity putProduct(){
	 * CategoryDTO category = new CategoryDTO(); category.setId(600);//자동생성이기 때문에
	 * 의미없음.. category.setCtgNm("test1"); category.setCtgLvl(1);
	 * 
	 * //return categoryRepository.save(category); return null; }
	 */
    
    @GetMapping("/getCategoryByLvl")
    public List<CategoryDTO> getCategoryByLvl(@RequestParam("ctgLvl")int ctgLvl, Model model){
    	List<CategoryDTO> ctgList = categoryService.getCategoryByLvl(ctgLvl);
    	model.addAttribute("ctgList", ctgList);
    	
//    	return "product/productList";
    	return null;
    }
    
    @GetMapping("/getChildCtg")
    @ResponseBody
    public List<CategoryDTO> getChildCtg(@RequestParam("oppCtgId")int oppCtgId, Model model){
    	List<CategoryDTO> childCtgList = categoryService.getCategoryByOppCtgId(oppCtgId);
    	log.debug(childCtgList.toString());
    	return childCtgList;
    }
}
