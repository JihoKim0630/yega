package com.project.yega.product.web;

import java.util.Arrays;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.project.yega.entity.ProdImgEntity;
import com.project.yega.entity.ProductEntity;
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
	public Page<ProductEntity> getProductList(String displayYn, Pageable pageable) {
//		List<ProductEntity> prodList = productRepository.findAll();
		Page<ProductEntity> products = productRepository.findByDisplayYn(displayYn, pageable);
//        List<ProductDTO> prodList = Arrays.asList(modelmapper.map(productRepository.findByDisplayYn(displayYn),ProductDTO[].class));
		return products;
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
		  
		  List<ProdImgEntity> rsult = prodImgRepository.findByProduct_IdAndMainImgYn(prodId,"Y");
		  
		  log.debug("rsult사이즈 : " + rsult.size());
		  log.debug("prodId : " + prodId);
		  
		  if(rsult.size() < 1) {//메인이미지 없을 때.. 기본 이미지 셋팅 해주기..
			  
		  }else {
			  modelmapper.map(rsult.get(0), prodMainImg);
			  
		  }
		  return prodMainImg; 
	  }
	  /**
	   *  카테고리아이디로 상품리스트 가져오는 메소드 
	   * @param    
	   * @return List<ProductDTO> 
	   * @ 작성자 KJH    
	   * @ version 1.0   
	   */
	  public Page<ProductEntity> searchProductByCtgId(ProductDTO inDTO, Pageable pageable) { 
		  
		  Page<ProductEntity> products = productRepository.findByCategory_Id(inDTO.getCategoryId(), pageable);;
		  
		 // List<ProductDTO> productDTO = Arrays.asList(modelmapper.map(productRepository.findByCategory_Id(inDTO.getCategoryId()),ProductDTO[].class));
		  return products; 
	  }
	  /**
	   *  카테고리아이디로 하위 카테고리의 상품리스트 가져오는 메소드 
	   * @param    
	   * @return List<ProductDTO> 
	   * @ 작성자 KJH    
	   * @ version 1.0   
	   */
	  public Page<ProductEntity> findByOppCtgIdNativeQuery(ProductDTO inDTO, Pageable pageable) { 
		  
		  Page<ProductEntity> products = productRepository.findByOppCtgIdNativeQuery(inDTO.getCategoryId(),pageable);
		 // List<ProductDTO> productDTO = Arrays.asList(modelmapper.map(productRepository.findByOppCtgIdNativeQuery(inDTO.getCategoryId(),pageable),ProductDTO[].class));
		  return products; 
	  }
	  
	  
}
