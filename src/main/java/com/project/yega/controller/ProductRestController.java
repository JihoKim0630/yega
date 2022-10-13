package com.project.yega.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.yega.entity.Category;
import com.project.yega.entity.Product;
import com.project.yega.repository.ProductRepository;

import lombok.Data;

@Data
@RestController
public class ProductRestController {

    private ProductRepository productRepository;

    public ProductRestController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/insertProduct")
    public Product putProduct() {
        Product product = new Product();
        Category category = new Category();
        category.setCategoryNm("첫번째 카테고리");
        product.setCategory(category);
        product.setProductNm("지붕2");

        return productRepository.save(product);
    }
}
