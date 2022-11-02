package com.project.yega.product.web;

import java.util.Arrays;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.yega.product.dto.ProdImgDTO;
import com.project.yega.product.dto.ProductDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private ProdImgRepository prodImgRepository;
	@Autowired
	private ModelMapper modelmapper;

	/**
	 *     전시여부로 상품 가져오는 메소드 
	 * 
	 * @param    
	 * @return List<ProductEntity>    
	 * @ 작성자 KJH    
	 * @ version 1.0   
	 */
	public List<ProductDTO> getProductList(String displayYn) {
//		List<ProductEntity> prodList = productRepository.findAll();

        List<ProductDTO> prodList = Arrays.asList(modelmapper.map(productRepository.findByDisplayYn(displayYn),ProductDTO[].class));
		return prodList;
	}
	/**
	 *     상품 상세 가져오는 메소드 
	 * 
	 * @param    
	 * @return ProductEntity   
	 * @ 작성자 KJH    
	 * @ version 1.0   
	 */
	public ProductDTO getProductDtl(int productId) {
		
		ProductDTO prodList = new ProductDTO();
		modelmapper.map(productRepository.findById(productId), prodList);
		
		prodList.setProdMainImg(getProdMainImg(productId));
		prodList.setProdImgList(getProdSubImgList(productId));//prod Img List 셋팅
		
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
	  /**
	   *     상품아이디로 해당상품 서브 이미지 가져오는 메소드 
	   * @param    
	   * @return List<ProdImgEntity>    
	   * @ 작성자 KJH    
	   * @ version 1.0   
	   */
	  public List<ProdImgDTO> getProdSubImgList(int prodId) { 

		  List<ProdImgDTO> prodImgList = Arrays.asList(modelmapper.map(prodImgRepository.findByProduct_IdAndMainImgYn(prodId,"N"),ProdImgDTO[].class));
		  return prodImgList; 
	  }
	  /**
	   *     상품아이디로 해당상품 메인이미지 가져오는 메소드 
	   * @param    
	   * @return ProdImgEntity  
	   * @ 작성자 KJH    
	   * @ version 1.0   
	   */
	  public ProdImgDTO getProdMainImg(int prodId) { 
		  
		  ProdImgDTO prodMainImg = new ProdImgDTO();
		  modelmapper.map(prodImgRepository.findByProduct_IdAndMainImgYn(prodId,"Y").get(0), prodMainImg);
		  return prodMainImg; 
	  }
}
