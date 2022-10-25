package com.project.yega.product.web;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.ProdImgEntity;
@Repository
public interface ProdImgRepository extends JpaRepository<ProdImgEntity,Integer> {

	List<ProdImgEntity> findByProduct_Id(int prodId);
	//List<ProdImgEntity> findByProduct_IdAndMainImgYn(int prodId, String yn);
}
