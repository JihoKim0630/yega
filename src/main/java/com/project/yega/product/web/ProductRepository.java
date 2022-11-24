package com.project.yega.product.web;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.ProductEntity;
@Repository
public interface ProductRepository extends JpaRepository<ProductEntity,Integer> {
	
	ProductEntity findById(int prodId); //상품ID 단건조회
	List<ProductEntity> findByDisplayYn(String displayYn); //전시여부 Y 인 상품 전체 조회
	List<ProductEntity> findByCategory_Id(int ctgId); //카테고리Id로 조회
	List<ProductEntity> findByProdTagContaining(String prodTag); //태그 like 검색
	ProductEntity findByIdAndDisplayYn(int prodId,String displayYn); //상품ID + 전시여부
	@Query(nativeQuery = true, value="SELECT P.* FROM PRODUCT P, CATEGORY C WHERE C.OPP_CTG_ID = :oppCtgId AND P.CTG_ID=C.CTG_ID ")
	List<ProductEntity> findByOppCtgIdNativeQuery(@Param("oppCtgId") int oppCtgId);
	
}
