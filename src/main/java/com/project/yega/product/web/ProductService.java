package com.project.yega.product.web;

import java.util.Arrays;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.yega.board.dto.EnquiryInDto;
import com.project.yega.category.dto.CategoryDTO;
import com.project.yega.entity.BoardContentEntity;
import com.project.yega.entity.BoardEntity;
import com.project.yega.entity.ProdImgEntity;
import com.project.yega.entity.ProductEntity;
import com.project.yega.product.dto.ProdImgDTO;
import com.project.yega.product.dto.ProductDTO;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private ProdImgRepository prodImgRepository;
	@Autowired
	private ModelMapper modelmapper;

	/**
	 *     상품 전체를 가져오는 메소드 
	 * 
	 * @param    
	 * @return List<ProductEntity>    
	 * @ 작성자 KJH    
	 * @ version 1.0   
	 */
	public List<ProductDTO> getProductList() {
//		List<ProductEntity> prodList = productRepository.findAll();

        List<ProductDTO> prodList = Arrays.asList(modelmapper.map(productRepository.findAll(),ProductDTO[].class));
		return prodList;
	}

	/**
	 *     상품아이디로 해당상품 이미지 가져오는 메소드 
	 * 
	 * @param    
	 * @return List<ProdImgEntity>    
	 * @ 작성자 KJH    
	 * @ version 1.0   
	 */
	  public List<ProdImgDTO> getProdImgList(int prodId) { 
//		  List<ProdImgEntity> prodImgList = prodImgRepository.findByProduct_Id(prodId);
	  
		  List<ProdImgDTO> prodImgList = Arrays.asList(modelmapper.map(prodImgRepository.findByProduct_Id(prodId),ProdImgDTO[].class));
		  return prodImgList; 
	  }
		 

}
