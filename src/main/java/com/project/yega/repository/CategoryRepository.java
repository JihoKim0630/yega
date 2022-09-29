package com.project.yega.repository;

import com.project.yega.entity.Category;
import com.project.yega.entity.Product;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category,Integer> {
}
