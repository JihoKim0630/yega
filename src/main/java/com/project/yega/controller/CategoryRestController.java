package com.project.yega.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.yega.entity.Category;
import com.project.yega.repository.CategoryRepository;

import lombok.Data;


@Data
@RestController
public class CategoryRestController {

    private CategoryRepository categoryRepository;

    public CategoryRestController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/insertCategory")
    public Category putProduct(){
        Category category = new Category();
        category.setId(100);
        category.setCategoryNm("test1");
        category.setCategoryLvl(1);

        return categoryRepository.save(category);
    }
}
