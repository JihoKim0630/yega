package com.project.yega.product.web;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.yega.category.dto.CategoryDTO;
import com.project.yega.category.web.CategoryService;
import com.project.yega.product.dto.ProdImgDTO;
import com.project.yega.product.dto.ProductDTO;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
    private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ModelMapper modelmapper;
    
    
    @GetMapping("/shop")
    public String getProductList(Model model) {
    	
    	List<ProductDTO> prodList = productService.getProductList();
    	
//    	for(int i = 0 ; i < prodList.size(); i++) {
    	//상품아이디로 이미지리스트 가져와서 setting해준다.
    	for(ProductDTO obj : prodList ) {
    		int prodId = obj.getId();
    		List<ProdImgDTO> imgList = productService.getProdImgList(prodId);
    		obj.setProdImgList(imgList);
    		
    	}
    	
    	List<CategoryDTO> ctgList = categoryService.getCategoryByLvl(1);
    	
    	
    	model.addAttribute("prodList",prodList);
    	model.addAttribute("rootCtgList", ctgList);//최상위카테고리
    	
    	return "product/productList";
    }
}
