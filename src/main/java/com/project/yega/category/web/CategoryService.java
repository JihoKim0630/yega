package com.project.yega.category.web;

import java.util.Arrays;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.yega.category.dto.CategoryDTO;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
@Service
public class CategoryService {
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private ModelMapper modelmapper;
	
	/**    
	 * 상품 카테고리 전체를 가져오는 메소드  
	 * @param     
	 * @return List<CategoryEntity>    
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public List<CategoryDTO> getCategoryList() {
//    	List<CategoryEntity> categoryList = categoryRepository.findAll();
    	List<CategoryDTO> categoryList = Arrays.asList(modelmapper.map(categoryRepository.findAll(),CategoryDTO[].class));
    	return categoryList;
    }
	/**    
	 * 카테고리 아이디로 카테고리 객체 가져오는 베소드  
	 * @param     
	 * @return CategoryEntity  
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public CategoryDTO getCategoryById(int id) {
		//CategoryEntity category = categoryRepository.findById(id).get();
		
		CategoryDTO category = new CategoryDTO();
		modelmapper.map(categoryRepository.findById(id), category);
		return category;
	}
	/**    
	 * 카테고리 레벨로 카테고리 가져오는 메소드  
	 * @param     
	 * @return List<CategoryEntity>    
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public List<CategoryDTO> getCategoryByLvl(int lvl) {
//		List<CategoryEntity> categoryList = categoryRepository.findByCtgLvl(lvl);
		List<CategoryDTO> categoryList = Arrays.asList(modelmapper.map(categoryRepository.findByCtgLvl(lvl),CategoryDTO[].class));
		
		return categoryList;
	}
	/**    
	 * 부모카테고리 아이디로 카테고리 가져오는 메소드  
	 * @param     
	 * @return List<CategoryEntity>    
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public List<CategoryDTO> getCategoryByOppCtgId(int oppCtgId) {
		log.debug("categoryService >>>>> " + oppCtgId);
		
//		List<CategoryEntity> categoryList = categoryRepository.findByParent_Id(oppCtgId);
		List<CategoryDTO> categoryList = Arrays.asList(modelmapper.map(categoryRepository.findByParent_Id(oppCtgId),CategoryDTO[].class));
		return categoryList;
	}
	

}
