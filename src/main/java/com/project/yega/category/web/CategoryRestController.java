package com.project.yega.category.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.yega.dto.CategoryDTO;
import com.project.yega.entity.CategoryEntity;

import lombok.Data;


@Data
@RestController
public class CategoryRestController {

    private CategoryRepository categoryRepository;

    public CategoryRestController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/insertCategory")
    public CategoryEntity putProduct(){
        CategoryDTO category = new CategoryDTO();
        category.setId(600);//자동생성이기 때문에 의미없음..
        category.setCategoryNm("test1");
        category.setCategoryLvl(1);

        //return categoryRepository.save(category);
        return null;
    }
}
