package com.project.yega.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.yega.entity.Category;

public interface CategoryRepository extends CrudRepository<Category,Integer> {
}
