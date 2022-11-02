/*카테고리 초기데이터*/
insert into category value(100,1,'목재/합판/보드 ',100)on duplicate key update ctg_lvl = 1 , ctg_nm = '목재/합판/보드 ';
insert into category value(101,2,'합판/MD',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '합판/MD';
insert into category value(102,2,'석고&부자재',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '석고&부자재';
insert into category value(103,2,'구조재/방부목',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '구조재/방부목';
insert into category value(104,2,'루바/원목몰딩',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '루바/원목몰딩';
insert into category value(105,2,'집성판/계단재',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '집성판/계단재';
insert into category value(106,2,'인테리어보드',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '인테리어보드';
insert into category value(107,2,'합성목재',100)on duplicate key update ctg_lvl = 2 , ctg_nm = '합성목재';
insert into category value(200,1,'페인트/방수/몰탈',200)on duplicate key update ctg_lvl = 1 , ctg_nm = '페인트/방수/몰탈';
insert into category value(201,2,'수성페인트',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '수성페인트';
insert into category value(202,2,'유성페인트',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '유성페인트';
insert into category value(203,2,'스테인',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '스테인';
insert into category value(204,2,'특수페인트',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '특수페인트';
insert into category value(205,2,'페인트부자제',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '페인트부자제';
insert into category value(206,2,'방수/발수제',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '방수/발수제';
insert into category value(207,2,'몰탈',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '몰탈';
insert into category value(208,2,'테라코',200)on duplicate key update ctg_lvl = 2 , ctg_nm = '테라코';
insert into category value(300,1,'도어/몰딩',300)on duplicate key update ctg_lvl = 1 , ctg_nm = '도어/몰딩';
insert into category value(301,2,'예가몰딩',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '예가몰딩';
insert into category value(302,2,'영림도어',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림도어';
insert into category value(303,2,'영림중문',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림중문';
insert into category value(304,2,'영림아트월',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림아트월';
insert into category value(305,2,'인테리어필름',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '인테리어필름';
insert into category value(306,2,'도어하드웨어',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '도어하드웨어';
insert into category value(307,2,'영림몰딩',300)on duplicate key update ctg_lvl = 2 , ctg_nm = '영림몰딩';
insert into category value(400,1,'바스',400)on duplicate key update ctg_lvl = 1 , ctg_nm = '바스';
insert into category value(401,2,'아메스 양변기',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 양변기';
insert into category value(402,2,'아메스 세면대',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 세면대';
insert into category value(403,2,'아메스 수전',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 수전';
insert into category value(404,2,'아메스 악세서리',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '아메스 악세서리';
insert into category value(405,2,'욕실장',400)on duplicate key update ctg_lvl = 2 , ctg_nm = '욕실장';
insert into category value(500,1,'철물',500)on duplicate key update ctg_lvl = 1 , ctg_nm = '철물';
insert into category value(501,2,'실리콘',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '실리콘';
insert into category value(502,2,'포장용품',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '포장용품';
insert into category value(503,2,'위생설비용품',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '위생설비용품';
insert into category value(504,2,'전기용품',500)on duplicate key update ctg_lvl = 2 , ctg_nm = '전기용품';
insert into category value(600,1,'공구',600)on duplicate key update ctg_lvl = 1 , ctg_nm = '공구';
insert into category value(601,2,'절삭공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '절삭공구';
insert into category value(602,2,'연마공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '연마공구';
insert into category value(603,2,'측정공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '측정공구';
insert into category value(604,2,'용접공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '용접공구';
insert into category value(605,2,'작업공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '작업공구';
insert into category value(606,2,'전동공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '전동공구';
insert into category value(607,2,'목공공구',600)on duplicate key update ctg_lvl = 2 , ctg_nm = '목공공구';
insert into category value(700,1,'산업안전용품',700)on duplicate key update ctg_lvl = 1 , ctg_nm = '산업안전용품';
insert into category value(701,2,'장갑',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '장갑';
insert into category value(702,2,'안전화',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '안전화';
insert into category value(703,2,'마스크',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '마스크';
insert into category value(704,2,'개인보호',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '개인보호';
insert into category value(705,2,'도로안전',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '도로안전';
insert into category value(706,2,'건설안전',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '건설안전';
insert into category value(707,2,'소방안전',700)on duplicate key update ctg_lvl = 2 , ctg_nm = '소방안전';
		 
/*상품 초기데이터*/
insert into product(product_id,display_yn,mnfc_compny,prod_price,prod_tag,prod_nm,ctg_id)
 value('100','Y', '예가',10000, null,'아메스/플랫 반다리 일체형 세면대','100')
	on duplicate key 
	update 
		  mnfc_compny = '예가'
		 , prod_nm = '아메스/플랫 반다리 일체형 세면대'
		 , prod_price = 10000
		 , ctg_id = '100';
		 
insert into product(product_id,display_yn,mnfc_compny,prod_price,prod_tag,prod_nm,ctg_id)
 value('200','Y', '예가',20000, null,'시그니처 탑볼 원홀 세면수전','100')
	on duplicate key 
	update 
		  mnfc_compny = '예가'
		 , prod_nm = '시그니처 탑볼 원홀 세면수전'
		 , prod_price = 20000
		 , ctg_id = '100';	
		 	
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
insert into board_content
	value('100','N','kim@hanmail.net','김지호','01026272469',null,'배송은 언제쯤 되나요?','배송문의',20221024235959,'Y','N',0,null,'1')
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
	
insert into board_content
	value('101','N','kim@naver.com','김지호','12345678',null,'장판 재질이 뭔가요?','제품문의',20221022235959,'Y','N',0,null,'1')
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
/*
insert into comn_cd (l_cd,m_cd,cd_nm,create_dt,order_seq,ref_1,ref_2,ref_3,use_yn)
	values('001', '003', '배너3', '20221027',3,'banner_img_03.jpg','/assets/img/banner_img_03.jpg',null,'Y')
on duplicate key update use_yn='Y' ;
*/