/*카테고리 초기데이터*/
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(100,now(),1,'목재/합판/보드 ',100)on duplicate key update ctg_lvl = 1 , ctg_nm = '목재/합판/보드 ';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(101,now(),2,'합판/MD',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '합판/MD';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(102,now(),2,'석고&부자재',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '석고&부자재';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(103,now(),2,'구조재/방부목',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '구조재/방부목';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(104,now(),2,'루바/원목몰딩',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '루바/원목몰딩';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(105,now(),2,'집성판/계단재',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '집성판/계단재';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(106,now(),2,'인테리어보드',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '인테리어보드';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(107,now(),2,'합성목재',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '합성목재';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(200,now(),1,'페인트/방수/몰탈',200)on duplicate key update ctg_lvl = 1 , ctg_nm = '페인트/방수/몰탈';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(201,now(),2,'수성페인트',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '수성페인트';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(202,now(),2,'유성페인트',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '유성페인트';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(203,now(),2,'스테인',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '스테인';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(204,now(),2,'특수페인트',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '특수페인트';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(205,now(),2,'페인트부자제',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '페인트부자제';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(206,now(),2,'방수/발수제',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '방수/발수제';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(207,now(),2,'몰탈',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '몰탈';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(208,now(),2,'테라코',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '테라코';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(300,now(),1,'도어/몰딩',300)on duplicate key update ctg_lvl = 1 , ctg_nm = '도어/몰딩';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(301,now(),2,'예가몰딩',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '예가몰딩';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(302,now(),2,'영림도어',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림도어';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(303,now(),2,'영림중문',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림중문';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(304,now(),2,'영림아트월',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림아트월';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(305,now(),2,'인테리어필름',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '인테리어필름';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(306,now(),2,'도어하드웨어',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '도어하드웨어';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(307,now(),2,'영림몰딩',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림몰딩';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(400,now(),1,'바스',400)on duplicate key update ctg_lvl = 1 , ctg_nm = '바스';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(401,now(),2,'아메스 양변기',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 양변기';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(402,now(),2,'아메스 세면대',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 세면대';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(403,now(),2,'아메스 수전',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 수전';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(404,now(),2,'아메스 악세서리',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 악세서리';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(405,now(),2,'욕실장',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '욕실장';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(500,now(),1,'철물',500)on duplicate key update ctg_lvl = 1 , ctg_nm = '철물';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(501,now(),2,'실리콘',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '실리콘';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(502,now(),2,'포장용품',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '포장용품';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(503,now(),2,'위생설비용품',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '위생설비용품';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(504,now(),2,'전기용품',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '전기용품';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(600,now(),1,'공구',600)on duplicate key update ctg_lvl = 1 , ctg_nm = '공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(601,now(),2,'절삭공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '절삭공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(602,now(),2,'연마공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '연마공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(603,now(),2,'측정공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '측정공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(604,now(),2,'용접공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '용접공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(605,now(),2,'작업공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '작업공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(606,now(),2,'전동공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '전동공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(607,now(),2,'목공공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '목공공구';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(700,now(),1,'산업안전용품',700)on duplicate key update ctg_lvl = 1 , ctg_nm = '산업안전용품';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(701,now(),2,'장갑',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '장갑';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(702,now(),2,'안전화',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '안전화';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(703,now(),2,'마스크',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '마스크';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(704,now(),2,'개인보호',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '개인보호';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(705,now(),2,'도로안전',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '도로안전';
insert into category(ctg_id, create_dt,ctg_lvl,ctg_nm,opp_ctg_id) value(706,now(),2,'건설안전',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '건설안전';

		 
/*상품 초기데이터*/
insert into product(product_id,create_dt,display_yn,mnfc_compny,prod_dtl_sbst,prod_price,prod_tag,prod_nm,ctg_id) value('100',now(),'Y', '예가','상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분',10000, null,'아메스/플랫 반다리 일체형 세면대','201')
	on duplicate key update prod_nm = '아메스/플랫 반다리 일체형 세면대', ctg_id = '201';
		 
insert into product(product_id,create_dt,display_yn,mnfc_compny,prod_dtl_sbst,prod_price,prod_tag,prod_nm,ctg_id) value('200',now(),'Y', '예가','상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분',20000, null,'시그니처 탑볼 원홀 세면수전','401')
	on duplicate key update prod_nm = '시그니처 탑볼 원홀 세면수전', ctg_id = '401';	
insert into product(product_id,create_dt,display_yn,mnfc_compny,prod_dtl_sbst,prod_price,prod_tag,prod_nm,ctg_id) value('300',now(),'Y', '예가','상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분',20000, null,'예쁜타일','101')
	on duplicate key update prod_nm = '예쁜타일', ctg_id = '101';	
insert into product(product_id,create_dt,display_yn,mnfc_compny,prod_dtl_sbst,prod_price,prod_tag,prod_nm,ctg_id) value('400',now(),'Y', '예가','상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분',20000, null,'예쁜타일2','101')
	on duplicate key update prod_nm = '예쁜타일2', ctg_id = '101';	
insert into product(product_id,create_dt,display_yn,mnfc_compny,prod_dtl_sbst,prod_price,prod_tag,prod_nm,ctg_id) value('500',now(),'Y', '예가','상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분',20000, null,'예쁜타일3','101')
	on duplicate key update prod_nm = '예쁜타일3', ctg_id = '101';	
/*insert into product(product_id,create_dt,display_yn,mnfc_compny,prod_dtl_sbst,prod_price,prod_tag,prod_nm,ctg_id) value('600',now(),'Y', '예가','상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분|상품상세설명부분',20000, null,'예쁜타일4','101')
	on duplicate key update prod_nm = '예쁜타일4', ctg_id = '101';	*/
		 	
/*상품이미지 초기데이터*/
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('1','/assets/img/productImg/100_detail_1.png','test','100_detail_1.png','N',100)
	on duplicate key update img_path = '/assets/img/productImg/100_detail_1.png' ,product_id=100;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('2','/assets/img/productImg/200_detail_1.png','test','200_detail_1.png','N',200)
	on duplicate key update img_path = '/assets/img/productImg/200_detail_1.png' ,product_id=200;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('3','/assets/img/productImg/100_main.png','test','100_main.png','Y',100)
	on duplicate key update img_path = '/assets/img/productImg/100_detail_1.png' ,product_id=100;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('4','/assets/img/productImg/200_main.png','test','200_main.png','Y',200)
	on duplicate key update img_path = '/assets/img/productImg/200_main.png' ,product_id=200;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('5','/assets/img/productImg/300_main.jpg','test','300_main.png','Y',300)
	on duplicate key update img_path = '/assets/img/productImg/300_main.png' ,product_id=300;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('6','/assets/img/productImg/400_main.jpg','test','400_main.png','Y',400)
	on duplicate key update img_path = '/assets/img/productImg/400_main.png' ,product_id=400;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('7','/assets/img/productImg/500_main.jpg','test','500_main.png','Y',500)
	on duplicate key update img_path = '/assets/img/productImg/500_main.png' ,product_id=500;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('8','/assets/img/productImg/300_detail_1.png','test','300_detail_1.png','N',300)
	on duplicate key update img_path = '/assets/img/productImg/300_detail_1.png' ,product_id=300;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('9','/assets/img/productImg/400_detail_1.png','test','400_detail_1.png','N',400)
	on duplicate key update img_path = '/assets/img/productImg/400_detail_1.png' ,product_id=400;
insert into PROD_IMG (file_seq ,img_path ,origin_img_nm ,server_img_nm ,main_img_yn ,product_id)
values('10','/assets/img/productImg/500_detail_1.png','test','500_detail_1.png','N',500)
	on duplicate key update img_path = '/assets/img/productImg/500_detail_1.png' ,product_id=500;


/*게시판 초기데이터*/
insert into board (
       board_id 
       , board_nm 
       , board_typ_cd 
       , board_eng_nm
       , create_dt
       , order_seq
       , use_yn 
    )
values('1','문의사항', '01','enquiry','20221018' ,'1','Y')
	on duplicate key 
	update board_nm='문의사항'
	  	  ,board_typ_cd='01'
	  	  ,create_dt='20221024'
	  	  ,order_seq='1'
	  	  ,use_yn='Y';
insert into board (
       board_id 
       , board_nm 
       , board_typ_cd 
       , board_eng_nm
       , create_dt
       , order_seq
       , use_yn 
    )
values('2','공지사항', '01','notice','20221018' ,'2','Y')
	on duplicate key 
	update board_nm='공지사항'
	  	  ,board_typ_cd='01'
	  	  ,create_dt='20221024'
	  	  ,order_seq='2'
	  	  ,use_yn='Y';

/*게시글 초기데이터*/
insert into board_content(content_seq,create_dt,update_dt,alarm_yn,author_email,author_id,author_phone_num,content_pw,content_sbst,content_sub,display_yn,lock_yn,look_up_cnt,board_id)
	value('100',20221024235959,null,'N','kim@hanmail.net','김지호','01026272469',null,'배송은 언제쯤 되나요?','배송문의','Y','N',0,'1')
	on duplicate key 
	update alarm_yn='N'
	,author_id ='김지호'
	,content_sbst='배송은 언제쯤 되나요?'
	,content_sub='배송문의'
	,create_dt=20221024235959
	,display_yn='Y'
	,lock_yn='N'
	,look_up_cnt=0
	,board_id='1';
	
insert into board_content (content_seq,create_dt,update_dt,alarm_yn,author_email,author_id,author_phone_num,content_pw,content_sbst,content_sub,display_yn,lock_yn,look_up_cnt,board_id)
	value('101',20221022235959,null,'N','kim@naver.com','김지호','12345678',null,'장판 재질이 뭔가요?','제품문의','Y','N',0,'1')
	on duplicate key 
	update alarm_yn='N'
	,author_id ='김지호'
	,content_sbst='장판 재질이 뭔가요?'
	,content_sub='제품문의'
	,create_dt=20221022235959
	,display_yn='Y'
	,lock_yn='N'
	,look_up_cnt=0
	,board_id='1';
/*공통코드*/
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('001', '*', '배너이미지', '20221027',0,'imgFileNm','imgFileFullPath',null,'Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('001', '001', '배너1', '20221027',1,'yega_banner_test1.png','/assets/img/yega_banner_test1.png',null,'Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('001', '002', '배너2', '20221027',2,'yega_banner_test2.png','/assets/img/yega_banner_test2.png',null,'Y')
on duplicate key update use_yn='Y' ;

insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('002', '*', '추천상품', '20221027',0,'PRODUCT_ID','imgFileFullPath','상품명','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('002', '001', '추천상품1', '20221027',1,'100','/assets/img/productImg/100_main.png','아메스/플랫 반다리 일체형 세면대','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('002', '002', '추천상품2', '20221027',2,'200','/assets/img/productImg/200_main.png','시그니처 탑볼 원홀 세면수전','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('002', '003', '추천상품3', '20221027',3,'300','/assets/img/productImg/300_main.jpg','예쁜타일','Y')
on duplicate key update use_yn='Y' ;


insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('003', '*', '베스트5', '20221027',0,'PRODUCT_ID','imgFileFullPath',null,'Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('003', '001', '베스트1', '20221027',1,'100','/assets/img/productImg/100_main.png','아메스/플랫 반다리 일체형 세면대','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('003', '002', '베스트2', '20221027',2,'200','/assets/img/productImg/200_main.png','시그니처 탑볼 원홀 세면수전','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('003', '003', '베스트3', '20221027',3,'300','/assets/img/productImg/300_main.jpg','예쁜타일','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('003', '004', '베스트4', '20221027',4,'400','/assets/img/productImg/400_main.jpg','예쁜타일2','Y')
on duplicate key update use_yn='Y' ;
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('003', '005', '베스트5', '20221027',5,'500','/assets/img/productImg/500_main.jpg','예쁜타일3','Y')
on duplicate key update use_yn='Y' ;

/*
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('001', '003', '배너3', '20221027',3,'banner_img_03.jpg','/assets/img/banner_img_03.jpg',null,'Y')
on duplicate key update use_yn='Y' ;
*/