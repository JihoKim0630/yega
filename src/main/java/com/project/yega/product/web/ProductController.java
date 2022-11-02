package com.project.yega.product.web;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.yega.category.dto.CategoryDTO;
import com.project.yega.category.web.CategoryService;
import com.project.yega.comn.JsonUtill;
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
	@Autowired
	private JsonUtill jsonUtill;
    
    @GetMapping("/shop")
    public String getProductList(Model model) {
    	
    	List<ProductDTO> prodList = productService.getProductList("Y");//전시여부 Y 인 상품만 가져오기..
    	log.debug("상품 목록 : " +prodList.toString());
    	
    	//상품아이디로 이미지리스트 가져와서 setting해준다.
    	for(ProductDTO obj : prodList ) {
    		int prodId = obj.getId();
    		
    		//메인 화면에서는 메인이미지만 필요하므로 메인만 받아서 넘긴다..
    		List<ProdImgDTO> imgList = new ArrayList<ProdImgDTO>();
    		ProdImgDTO mainImg = productService.getProdMainImg(prodId);
    		
    		imgList.add(mainImg);
    		obj.setProdImgList(imgList);
    	}
    	
    	List<CategoryDTO> ctgList = categoryService.getCategoryByLvl(1);
    	
    	model.addAttribute("prodList",prodList);
    	model.addAttribute("rootCtgList", ctgList);//최상위카테고리
    	
    	return "product/productList";
    }
    
    @GetMapping(value="/detail/{productId}")
    public String getProductDtl(@PathVariable("productId") int productId ,Model model) {
    	ProductDTO prodDtl = productService.getProductDtl(productId);
    	log.debug("상품상세 : " +prodDtl.toString());
    	model.addAttribute("prodDtl",prodDtl);
    	
    	return "product/productDtl";
    }
}
