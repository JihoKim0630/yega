package com.project.yega.category.web;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.CategoryEntity;

import lombok.Data;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity,Integer> {
	List<CategoryEntity> findByCtgLvl(int ctgLvl);
	List<CategoryEntity> findByParent_IdAndCtgLvl(int oppCtgId, int ctgLvl);
}
