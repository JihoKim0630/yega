package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.Data;

@Data
@Entity
@Table(name="COMN_CD")
@IdClass(ComnCdId.class)
public class ComnCdEntity {
	
   // @EmbeddedId
   // private ComnCdId comnCdId; // (l_cd, m_cd)
    
	@Id @Column(name="L_CD")
	private String larCd;		//대분류
	@Id @Column(name="M_CD")
	private String midCd;		//중분류
	
    @Column(name="CD_NM", nullable = false, length = 255)
    private String cdNm;		//코드명
    
    @Column(name="ORDER_SEQ", nullable = false, length = 10)
    private int orderSeq;		//노출순서
    
    @ColumnDefault("Y") 
    @Column(name="USE_YN", nullable = false, length = 1)
    private String useYn;  		//사용여부
    
    @Column(name="REF_1", nullable = true, length = 255)
    private String ref1;		//참조코드1
    
    @Column(name="REF_2", nullable = true, length = 255)
    private String ref2;		//참조코드2
    
    @Column(name="REF_3", nullable = true, length = 255)
    private String ref3;		//참조코드3
    
    @CreatedDate
    @Column(name="CREATE_DT")
    private LocalDateTime createDt;	//생성일시
    @LastModifiedDate
    @Column(name="UPDATE_DT")
    private LocalDateTime updateDt;	//수정일시

}