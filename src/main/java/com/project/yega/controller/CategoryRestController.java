package com.project.yega.controller;

import com.project.yega.entity.Category;
import com.project.yega.entity.Product;
import com.project.yega.repository.CategoryRepository;
import com.project.yega.repository.ProductRepository;
import lombok.Data;
import lombok.extern.log4j.Log4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


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
