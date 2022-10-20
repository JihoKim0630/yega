package com.project.yega.product.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.yega.entity.CategoryEntity;
import com.project.yega.entity.ProductEntity;

import lombok.Data;

@Data
@RestController
public class ProductRestController {

    private ProductRepository productRepository;

    public ProductRestController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/insertProduct")
    public ProductEntity putProduct() {
        ProductEntity product = new ProductEntity();
        CategoryEntity category = new CategoryEntity();
        category.setCategoryNm("첫번째 카테고리");
        product.setCategory(category);
        product.setProductNm("지붕2");

        return productRepository.save(product);
    }
}
