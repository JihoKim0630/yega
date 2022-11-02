package com.project.yega.comn.dto;

import com.project.yega.entity.ComnCdId;

import lombok.Data;

@Data
public class ComnCdDTO {
	
    private ComnCdId comnCdId; // (l_cd, m_cd)
    private String lCd;		//코드명
    private String mCd;		//코드명
    private String cdNm;		//코드명
    private int orderSeq;		//노출순서
    private String useYn;  		//사용여부
    private String ref1;		//참조코드1
    private String ref2;		//참조코드2
    private String ref3;		//참조코드3
    private String createDt;	//생성일시

}