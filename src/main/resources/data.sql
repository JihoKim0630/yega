/*카테고리 초기데이터*/
insert into category value('100','1', '욕실',null)
	on duplicate key 
	update ctg_lvl = '1'
		 , ctg_nm = '욕실';
insert into category value('200','1', '도배',null)
	on duplicate key 
	update ctg_lvl = '1'
		 , ctg_nm = '도배';
insert into category value('300','1', '몰딩',null)
	on duplicate key 
	update ctg_lvl = '1'
		 , ctg_nm = '몰딩';
insert into category value('400','1', '장판',null)
	on duplicate key 
	update ctg_lvl = '1'
		 , ctg_nm = '장판';
insert into category value('500','2', '세면대','100')
	on duplicate key 
	update ctg_lvl = '2'
		 , ctg_nm = '세면대';
insert into category value('600','2', '수전','100')
	on duplicate key 
	update ctg_lvl = '2'
		 , ctg_nm = '수전';
insert into category value('700','2', '변기','100')
	on duplicate key 
	update ctg_lvl = '2'
		 , ctg_nm = '변기';
insert into category value('800','2', '원목','400')
	on duplicate key 
	update ctg_lvl = '2'
		 , ctg_nm = '원목';
insert into category value('900','2', '대리석','400')
	on duplicate key 
	update ctg_lvl = '2'
		 , ctg_nm = '대리석';
		 
/*상품 초기데이터*/
insert into product value('100','Y', '예가',10000, null,'예쁜수전','100')
	on duplicate key 
	update 
		  mnfc_compny = '예가'
		 , prod_nm = '예쁜수전'
		 , prod_price = 10000
		 , ctg_id = '100';
		 
insert into product value('200','Y', '예가',20000, null,'예쁜세면대','100')
	on duplicate key 
	update 
		  mnfc_compny = '예가'
		 , prod_nm = '예쁜세면대'
		 , prod_price = 20000
		 , ctg_id = '100';	
		 	
/*상품이미지 초기데이터*/
insert into PROD_IMG 
	(file_seq
	,img_path
	,origin_img_nm
	,server_img_nm
	,main_img_yn
	,product_id)
values(
	'1'
	,'/assets/img/shop_01.jpg'
	,'test'
	,'shop_01.jpg'
	,'N'
	,100
)on duplicate key 
	update
	img_path = '/assets/img/shop_01.jpg'
	,product_id=100;

insert into PROD_IMG 
	(file_seq
	,img_path
	,origin_img_nm
	,server_img_nm
	,main_img_yn
	,product_id)
values(
	'2'
	,'/assets/img/shop_02.jpg'
	,'test'
	,'shop_02.jpg'
	,'Y'
	,100
)on duplicate key 
	update
	img_path = '/assets/img/shop_02.jpg'
	,product_id=100;

insert into PROD_IMG 
	(file_seq
	,img_path
	,origin_img_nm
	,server_img_nm
	,main_img_yn
	,product_id)
values(
	'3'
	,'/assets/img/shop_03.jpg'
	,'test'
	,'shop_03.jpg'
	,'Y'
	,200
)on duplicate key 
	update
	img_path = '/assets/img/shop_03.jpg'
	,product_id=200;		 


/*게시판 초기데이터*/
insert into board value('1','문의사항 게시판', '01','20221018' ,'1','Y')
	on duplicate key 
	update board_nm='문의사항 게시판'
	  	  ,board_typ_cd='01'
	  	  ,create_dt='20221024'
	  	  ,order_seq='1'
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
