package com.project.yega.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.yega.entity.CategoryEntity;

public interface CategoryRepository extends CrudRepository<CategoryEntity,Integer> {
}
