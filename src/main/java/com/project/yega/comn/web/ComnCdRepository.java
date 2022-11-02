package com.project.yega.comn.web;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.ComnCdEntity;
import com.project.yega.entity.ComnCdId;

@Repository
public interface ComnCdRepository extends JpaRepository<ComnCdEntity,ComnCdId> {
	/*@Query(nativeQuery = true, value="SELECT * FROM COMN_CD WHERE L_CD=:lCd")
	List<ComnCdEntity> findByLCdWithNativeQuery(@Param("lCd") String lCd);
	@Query(nativeQuery = true, value="SELECT * FROM COMN_CD WHERE L_CD=:lCd AND USE_YN=:useYn")
	List<ComnCdEntity> findByLCdAndUseYnNativeQuery(@Param("lCd") String lCd, @Param("useYn") String useYn);*/
	//List<ComnCdEntity> findByComnCdId(ComnCdId comnCdId);
	List<ComnCdEntity> findByLarCd(String lCd);
	List<ComnCdEntity> findByLarCdAndMidCd(String lCd, String mCd);
	List<ComnCdEntity> findByCdNm(String cdNm);
	List<ComnCdEntity> findByLarCdAndUseYnAndOrderSeqGreaterThanEqual(String lCd,String useYn,int orderSeq);
}
