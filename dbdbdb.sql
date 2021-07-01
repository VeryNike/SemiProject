DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE CATEGORY CASCADE CONSTRAINTS;
DROP TABLE ITEM CASCADE CONSTRAINTS;
DROP TABLE IMAGE CASCADE CONSTRAINTS;
DROP TABLE ITEM_IMAGE CASCADE CONSTRAINTS;
DROP TABLE ORDER CASCADE CONSTRAINTS;
DROP TABLE EDIT_LIST CASCADE CONSTRAINTS;
DROP TABLE USER_INFORMATION CASCADE CONSTRAINTS;
DROP TABLE DIET CASCADE CONSTRAINTS;
DROP TABLE PT CASCADE CONSTRAINTS;
DROP TABLE CHECKLIST CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE "COMMENT" CASCADE CONSTRAINTS;
DROP TABLE EXERCISE CASCADE CONSTRAINTS;

--------------------------------------------------------------------------------
CREATE TABLE "USER_INFORMATION" (
	"ID"	VARCHAR2(20)		NOT NULL,
	"PASSWORD"	VARCHAR2(20)		NOT NULL,
	"GENDER"	VARCHAR2(20)		NOT NULL,
	"AGE"	NUMBER		NOT NULL,
	"NAME"	VARCHAR2(20)		NOT NULL,
	"NICK_NAME"	VARCHAR2(20)		NOT NULL,
	"ADDRESS"	VARCHAR2(100)		NULL,
	"EMAIL"	VARCHAR2(100)		NOT NULL,
	"PHONE"	VARCHAR(20)		NOT NULL,
	"M_RATING"	VARCHAR2(50)		NULL,
	"F_FOOD"	VARCHAR2(100)		NULL,
	"SORTATION"	VARCHAR2(200)		NULL,
	"STATUS"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "USER_INFORMATION"."ID" IS '아이디';
COMMENT ON COLUMN "USER_INFORMATION"."PASSWORD" IS '비밀번호';
COMMENT ON COLUMN "USER_INFORMATION"."GENDER" IS '성별';
COMMENT ON COLUMN "USER_INFORMATION"."AGE" IS '나이';
COMMENT ON COLUMN "USER_INFORMATION"."NAME" IS '이름';
COMMENT ON COLUMN "USER_INFORMATION"."NICK_NAME" IS '닉네임';
COMMENT ON COLUMN "USER_INFORMATION"."ADDRESS" IS '주소';
COMMENT ON COLUMN "USER_INFORMATION"."EMAIL" IS '이메일';
COMMENT ON COLUMN "USER_INFORMATION"."PHONE" IS '전화번호';
COMMENT ON COLUMN "USER_INFORMATION"."M_RATING" IS '회원별 등급';
COMMENT ON COLUMN "USER_INFORMATION"."F_FOOD" IS '선호음식선택';
COMMENT ON COLUMN "USER_INFORMATION"."SORTATION" IS '구분';
COMMENT ON COLUMN "USER_INFORMATION"."STATUS" IS '회원탈퇴여부';

ALTER TABLE "USER_INFORMATION" ADD CONSTRAINT "PK_USER_INFORMATION" PRIMARY KEY (
	"ID"
);
----------------------------비밀번호 암호화 위한 비밀번호 길이 수정 ----------
ALTER TABLE USER_INFORMATION MODIFY (PASSWORD VARCHAR2(200));

--------------------------------------------------------------------------------
CREATE TABLE "DIET" (
	"D_CODE"	NUMBER		NOT NULL,
	"D_DATE"	DATE		NOT NULL,
	"MEMO"	VARCHAR2(3000)		NULL,
	"ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "DIET"."D_CODE" IS '식단날짜별코드';
COMMENT ON COLUMN "DIET"."D_DATE" IS '날짜선택';
COMMENT ON COLUMN "DIET"."MEMO" IS '메모 기록';
COMMENT ON COLUMN "DIET"."ID" IS '아이디';

ALTER TABLE "DIET" ADD CONSTRAINT "PK_DIET" PRIMARY KEY (
	"D_CODE"
);
ALTER TABLE "DIET" ADD CONSTRAINT "FK_USER_INFORMATION_TO_DIET_1" FOREIGN KEY (
	"ID"
)
REFERENCES "USER_INFORMATION" (
	"ID"
);
ALTER TABLE DIET ADD (STATUS VARCHAR2(20) DEFAULT 'N');

--------------------------------------------------------------------------------
CREATE TABLE "COMMENT" (
	"COMMENT_NM"	NUMBER		NOT NULL,
	"COMMENT_CONTENT"	VARCHAR2(3000)		NOT NULL,
	"WRITE_DATE"	DATE		NOT NULL,
	"ID"	VARCHAR2(1000)		NOT NULL,
	"B_NO"	NUMBER		NOT NULL,
	"STATUS" VARCHAR2(200 BYTE) NOT NULL
);

COMMENT ON COLUMN "COMMENT"."COMMENT_NM" IS '댓글 번호';
COMMENT ON COLUMN "COMMENT"."COMMENT_CONTENT" IS '댓글 내용';
COMMENT ON COLUMN "COMMENT"."WRITE_DATE" IS '작성 날짜';
COMMENT ON COLUMN "COMMENT"."ID" IS '아이디';
COMMENT ON COLUMN "COMMENT"."B_NO" IS '게시글 번호';
COMMENT ON COLUMN "COMMENT"."STATUS" IS '상태값';

ALTER TABLE COMMENT MODIFY (STATUS DEFAULT 'Y');

ALTER TABLE "COMMENT" ADD CONSTRAINT "PK_COMMENT" PRIMARY KEY (
	"COMMENT_NM"
);
ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_USER_INFORMATION_TO_COMMENT_1" FOREIGN KEY (
	"ID"
)
REFERENCES "USER_INFORMATION" (
	"ID"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_BOARD_TO_COMMENT_1" FOREIGN KEY (
	"B_NO"
)
REFERENCES "BOARD" (
	"B_NO"
);

--------------------------------------------------------------------------------
CREATE TABLE "PT" (
	"PT_NO"	NUMBER		NOT NULL,
	"PT_TYPE"	VARCHAR2(50)		NOT NULL,
	"PT_NAME"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "PT"."PT_NO" IS '운동의 번호';
COMMENT ON COLUMN "PT"."PT_TYPE" IS '운동의 부위';
COMMENT ON COLUMN "PT"."PT_NAME" IS '운동의 이름';

ALTER TABLE "EXERCISE" ADD CONSTRAINT "PK_EXERCISE" PRIMARY KEY (
	"PT_NO"
);

INSERT INTO PT VALUES(1, '전신', '버피 (Burpee)');
INSERT INTO PT VALUES(2, '전신', '마운틴 클라이버(Moutain climber)');
INSERT INTO PT VALUES(3, '전신', '플랭크 (Plank)');
INSERT INTO PT VALUES(4, '전신', '푸쉬업(Push-up)');
INSERT INTO PT VALUES(5, '전신', '스쿼드 점프(Squat jump)');
INSERT INTO PT VALUES(6, '전신', '런지 (Lunge)');
INSERT INTO PT VALUES(7, '하체', '스쿼트 (squat)');
INSERT INTO PT VALUES(8, '하체', '레그프레스 (Leg press)');
INSERT INTO PT VALUES(9, '하체', '레그 익스텐션 (Leg extension)');
INSERT INTO PT VALUES(10, '하체', '레그 컬(Leg curl)');
INSERT INTO PT VALUES(11, '하체', '데드리프트(Deadlift)');
INSERT INTO PT VALUES(12, '팔', '덤벨 컬 (Dumbbell-curl)');
INSERT INTO PT VALUES(13, '팔', '바벨 컬 (Barbell-curl)');
INSERT INTO PT VALUES(14, '팔', '트라이 셉스 푸시다운 (Triceps Pushdown)');
INSERT INTO PT VALUES(15, '팔', '트라이 셉스 익스텐션 (Triceps Extension)');
INSERT INTO PT VALUES(16, '팔', '덤벨 시티드 오버헤드 프레스(Dumbbell seated overhead press)');
INSERT INTO PT VALUES(17, '가슴', '벤치 프레스 (Bench press)');
INSERT INTO PT VALUES(18, '가슴', '덤벨 플라이 (Dumbbell Fly)');
INSERT INTO PT VALUES(19, '가슴', '푸쉬 업 (Push-up)');
INSERT INTO PT VALUES(20, '가슴', '케이블 크로스 오버 (Cable Cross over)');
INSERT INTO PT VALUES(21, '가슴', '딥스 (Dips)');
INSERT INTO PT VALUES(22, '복근', '시티드 니업 (Seated Knee Up)');
INSERT INTO PT VALUES(23, '복근', '브이 업 (V-up)');
INSERT INTO PT VALUES(24, '복근', '러시안 트위스트 (Russian-twist)');
INSERT INTO PT VALUES(25, '복근', '레그 레이즈 (Leg-raise)');
INSERT INTO PT VALUES(26, '복근', '크런치 (Crunch)');
INSERT INTO PT VALUES(27, '복근', '푸쉬업 홀드 (Push-up hold)');
INSERT INTO PT VALUES(28, '등', '벤트 오버 바벨로우(Bent-over Barbell Row)');
INSERT INTO PT VALUES(29, '등', '렛풀다운 (Lat pull down)');
INSERT INTO PT VALUES(30, '등', '풀업 (Pull-up)');
INSERT INTO PT VALUES(31, '등', '시티드 케이블 로우 (Seated cable row)');
INSERT INTO PT VALUES(32, '등', '티바 로우 (T-bar Row)');
--------------------------------------------------------------------------------
CREATE TABLE "CHECKLIST" (
	"LIST_NO"	NUMBER		NOT NULL,
	"LIST_DATE"	NUMBER		NOT NULL,
	"LIST_CONTENT"	VARCHAR2(2000)		NULL,
	"ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "CHECKLIST"."LIST_NO" IS '리스트의 번호';
COMMENT ON COLUMN "CHECKLIST"."LIST_DATE" IS '추가된 리스트의 날짜';
COMMENT ON COLUMN "CHECKLIST"."LIST_CONTENT" IS '리스트의 내용';
COMMENT ON COLUMN "CHECKLIST"."ID" IS '아이디';

ALTER TABLE "CHECKLIST" ADD CONSTRAINT "PK_CHECKLIST" PRIMARY KEY (
	"LIST_NO"
);
ALTER TABLE "CHECKLIST" ADD CONSTRAINT "FK_USER_INFORMATION_TO_CHECKLIST_1" FOREIGN KEY (
	"ID"
)
REFERENCES "USER_INFORMATION" (
	"ID"
);

--------------------------------------------------------------------------------
CREATE TABLE REVIEW (
    "ITEM_CODE"   VARCHAR2(20)      NULL,
    "RNUM"   NUMBER      NULL,
    "NAME"   VARCHAR2(30)      NULL,
    "CONTENT"   VARCHAR2(1000)      NOT NULL,
    "CDATE"     VARCHAR2(30)    NULL,
    "STATUS"    VARCHAR2(10) DEFAULT 'Y' 
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_ORDER_TO_REVIEW_2" FOREIGN KEY (
	"ITEM_CODE"
)
REFERENCES "ORDER" (
	"ITEM_CODE"
);

--------------------------------------------------------------------------------
CREATE TABLE "BOARD" (
	"B_NO"	NUMBER	NOT NULL,
	"B_TYPE" NUMBER NOT NULL,
	"CATE_NO" NUMBER NOT NULL,
	"PS_TITLE" VARCHAR2(200 BYTE) NULL,
	"PS_CONTENT" VARCHAR2(1000 BYTE) NULL,
	"PS_WRITER" VARCHAR2(200 BYTE) NOT NULL,
	"PS_DATE" DATE NOT NULL,
	"COMMENT_NO" NUMBER NULL, 
    	"STATUS" VARCHAR2(200 BYTE) NOT NULL
);

COMMENT ON COLUMN "BOARD"."B_NO" IS '게시글 번호';
COMMENT ON COLUMN "BOARD"."B_TYPE" IS '타입';
COMMENT ON COLUMN "BOARD"."CATE_NO" IS '운동 번호';
COMMENT ON COLUMN "BOARD"."PS_TITLE" IS '게시글 제목';
COMMENT ON COLUMN "BOARD"."PS_CONTENT" IS '게시글 내용';
COMMENT ON COLUMN "BOARD"."PS_WRITER" IS '게시글 쓰기';
COMMENT ON COLUMN "BOARD"."PS_DATE" IS '작성일';
COMMENT ON COLUMN "BOARD"."COMMENT_NO" IS '댓글 수';
COMMENT ON COLUMN "BOARD"."STATUS" IS '상태값';

ALTER TABLE BOARD MODIFY (STATUS DEFAULT 'Y');

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"B_NO"
);
ALTER TABLE "BOARD" ADD CONSTRAINT "FK_USER_INFORMATION_TO_BOARD_1" FOREIGN KEY (
	"ID"
)
REFERENCES "USER_INFORMATION" (
	"ID"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "FK_EXERCISE_TO_BOARD_1" FOREIGN KEY (
	"PT_NO"
)
REFERENCES "EXERCISE" (
	"PT_NO"
);

ALTER TABLE BOARD
ADD CONSTRAINT ID foreign key (ID) references USER_INFORMATION(ID);

ALTER TABLE BOARD
ADD CONSTRAINT CATE_NO foreign key (CATE_NO) references CATEGORY(CATE_NO);


--------------------------------------------------------------------------------
CREATE TABLE "CATEGORY"(
   "CATE_NO"   VARCHAR2(20)     NOT NULL,
   "CATE_NM"   VARCHAR2(20)      NULL 
);

COMMENT ON COLUMN "CATEGORY"."CATE_NO" IS '운동 번호';

COMMENT ON COLUMN "CATEGORY"."CATE_NM" IS '테니스/등산/마라톤 등등';

INSERT INTO CATEGORY VALUES('10','모두보기');
INSERT INTO CATEGORY VALUES('20','filter-1');
INSERT INTO CATEGORY VALUES('30','filter-2');
INSERT INTO CATEGORY VALUES('40','filter-3');
INSERT INTO CATEGORY VALUES('50','filter-4');
INSERT INTO CATEGORY VALUES('60','filter-5');
INSERT INTO CATEGORY VALUES('70','filter-6');

ALTER TABLE CATEGORY ADD PRIMARY KEY (CATE_NO);


--------------------------------------------------------------------------------
CREATE TABLE "ITEM" (
	"ITEM_CODE"	VARCHAR2(1000)		NOT NULL,
	"ITEM_NAME"	VARCHAR2(4000)		NOT NULL,
	"ITEM_PRICE"	VARCHAR2(1000)		NOT NULL,
	"ITEM_DESC"	VARCHAR2(4000)		NOT NULL,
	"ITEM_IFM"	VARCHAR2(2000)		NOT NULL,
	"ITEM_CATEGORY"	VARCHAR2(500)		NOT NULL,
	"ITEM_DETAIL2"	VARCHAR2(500)		NOT NULL,
	"ITEM_SIZE"	VARCHAR2(2000)		NOT NULL,
	"ITEM_URL"	VARCHAR2(4000)		NOT NULL,
	"ITEM_LOGO"	VARCHAR2(4000)		NOT NULL,
	"ITEM_STOCK"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "ITEM"."ITEM_CODE" IS '상품 코드';
COMMENT ON COLUMN "ITEM"."ITEM_NAME" IS '상품 이름';
COMMENT ON COLUMN "ITEM"."ITEM_PRICE" IS '상품 가격';
COMMENT ON COLUMN "ITEM"."ITEM_DESC" IS '상품 설명';
COMMENT ON COLUMN "ITEM"."ITEM_IFM" IS '상품 정보';
COMMENT ON COLUMN "ITEM"."ITEM_CATEGORY" IS '분류';
COMMENT ON COLUMN "ITEM"."ITEM_DETAIL2" IS '컬러';
COMMENT ON COLUMN "ITEM"."ITEM_SIZE" IS '사이즈';
COMMENT ON COLUMN "ITEM"."ITEM_URL" IS '상품 이미지';
COMMENT ON COLUMN "ITEM"."ITEM_LOGO" IS '상품 로고';
COMMENT ON COLUMN "ITEM"."ITEM_STOCK" IS '상품 재고';

ALTER TABLE ITEM ADD PRIMARY KEY (ITEM_CODE);

SET DEFINE OFF;

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values 
('1','Nike Sportswear T-shirt','55000','This T-shirt came out in the summer of 21, and it has good ventilation and excellent design during outdoor activities. Also, it is a product made for semi-project and not for sale. The size is limited and the number is limited. There is no way to purchase this. But you can buy it if you want. The unofficial price is 1,000 dollars. However, it is sold at this price during the unofficial sale period.
','0.5KG','Style No. NKBQ5231','BLACK','S','NIKE-TEE.JPG','NIKE-LOGO.JPG','3');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('2','Nike Sports Graphic Shorts.','80000','CLASSIC COMFORT. BOLD STYLE.
The Nike Sportswear Club Shorts blend classic comfort with a bold graphic for street-ready style. Crafted from soft fleece, they ve got you covered for all-day wear.
Secure Fit
Elastic waistband with drawcord offers a secure, personalised fit.
Soft Comfort
Brushed-back fabric is soft and comfortable.
Product Details
Standard fit for a relaxed, easy feel
Body: 80% cotton/20% polyester. Side pocket knuckle side/back pocket: 100% cotton.
Machine wash
Imported
Colour Shown: White/White
Style: BV2721-100','1.1KG','Style No. NPWH9271','WHITE','M','NIKE-PANTS.JPG','NIKE-LOGO.JPG','3');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('3','Nike ZoomX Running Shoes','120000','Nike ZoomX foam and 5% Vaporfly for the ultimate energy return on your Nike run, plus more ZoomX for race day comfort.
Pressure-reducing lacing system: The
laces are engraved through the lightweight side rings, eliminating leg bands, reducing shoe weight and relieving pressure in the sturdy areas.
Features: -
Complete carbon plate on the midsole to prevent energy loss when the toe flexes.
Wide toes with a wider fitting to better work the muscles in the front of the foot.
Flexible grooves along the outsole increase multi-surface friction in a variety of weather conditions.
Specification:
10 grams (or 5%) weight reduction over Vaporfly 4% Flyknit. Shop from the comfort of your own home through our online store specializing in','1.2KG','Style No. CO062NS','CORAL','230~285','NIKE-SHOES.JPG','NIKE-LOGO.JPG','3');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('4','Bodyfit 10Kg Dumbbells','40000','Made From Solid Cast Iron With A 6-Sided Anti-Roll Design And Encased In Virgin Rubber
This Dumbbell Is Stylish As It Is Durable It Resists Cracking And Fading While Protecting Floors
Equipment Heads Are Securely Fastened With A Uniquely Designed Pin Mechanism That Means This Equipment Is About As Low-Maintenance As It Gets
No Spinning Or Loosening. Dumbbells Sold In Pairs Price Shown Is For 1 Pair','10KG','ITEM No.B10KGDB','BLACK','FREE','DUMBELL.JPG','SPORT1.JPG','5');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('5','Pro Whey Protein','45000','Protein protein supplements, which help muscle synthesis and muscle fiber tissue grow, are close to 1L and vanilla flavor is very easy for users to consume without resistance.Its hard to imagine the explanation, but the semi-project is fun. Our team is good, too.
','2KG','ITEM No.PROB1L','Vanilla Cream','935G','DRINK','DRINK.JPG','5');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('6','LE ONE-PER-DAY Vitamin','30000','I just put in the multivitamin. I dont know if its helpful for exercise, but its a necessary health supplement for modern people. Especially, modern people who work indoors, not outdoors, lack vitamin D, so I hope you eat well. But if I eat too much, its too much for my liver, so I dont eat much these days.
','0.5KG','ITEM No.LEOVT60','FREE','FREE','VITAMIN1','NOW.JPG','10');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('7','Nike Training Gloves','38000','Gloves are very basic equipment as Nikes assistive equipment to help keep them from slipping during exercise. It is an auxiliary equipment that is easy to ventilate in the form of half gloves and helps to increase the intensity of exercise.
','0.5KG','Style No.NG535LVS','BLACK','FREE','GLOVES.JPG','GLOVES1.JPG','3');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('8','Founder Insulated Bottle','20000','Designed by a very famous designer for water-bearing tumbler design and has excellent cooling and thermal insulation, it is very suitable for outdoor activities or gym use The tumbler color that won the design award is black
','0.5KG','ITEM No.TB1LFL','BLACK','1L','TUMBLR.JPG','TUMBLR1.JPG','3');

Insert into ITEM (ITEM_CODE,ITEM_NAME,ITEM_PRICE,ITEM_DESC,ITEM_IFM,ITEM_CATEGORY,ITEM_DETAIL2,ITEM_SIZE,ITEM_URL,ITEM_LOGO,ITEM_STOCK) values ('9','20kg KettleBell','38000','Kettle bells are easy to use at home, outdoors, or in the gym, and easy to carry. Compared to the small size, the weight of this product is 20kg and only one will be sent when purchasing. Be careful of injuries.
','5KG','ITEM No.KB20KGBP','BLACK','FREE','KETTLEBELL.JPG','SPORT3.JPG','3');

--------------------------------------------------------------------------------
CREATE TABLE "ITEM_IMAGE" (
   "IMAGE_NUM"   NUMBER      NOT NULL,
   "ITEM_CODE"   VARCHAR2(20)      NOT NULL,
   "ORG_IMG_NM"   VARCHAR2(60)      NOT NULL,
   "SAVE_IMG_NM"   VARCHAR2(60)      NOT NULL,
   "IMG_SIZE"    NUMBER     NOT NULL,
   "IMG_PATH"   VARCHAR2(100)      NULL,
   "IMG_DESC"   VARCHAR2(200)      NULL,
   "REG_DATE"   DATE      NOT NULL
);

SET DEFINE OFF;

Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (1,'1','image1.jpg','image1.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (2,'2','image2.jpg','image2.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (3,'3','image3.jpg','image3.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (4,'4','image4.jpg','image4.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (5,'5','image5.jpg','image5.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (6,'6','image6.jpg','image6.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (7,'7','image7.jpg','image7.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (8,'8','image8.jpg','image8.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));
Insert into ITEM_IMAGE (IMAGE_NUM,ITEM_CODE,ORG_IMG_NM,SAVE_IMG_NM,IMG_SIZE,IMG_PATH,IMG_DESC,REG_DATE) values (9,'9','image9.jpg','image9.jpg',0,'img',null,to_date('21/06/22','RR/MM/DD'));

ALTER TABLE ITEM_IMAGE ADD PRIMARY KEY (IMAGE_NUM);
ALTER TABLE ITEM_IMAGE MODIFY (IMG_SIZE DEFAULT 0);
ALTER TABLE ITEM_IMAGE MODIFY (REG_DATE DEFAULT SYSDATE);


CREATE SEQUENCE  "SEMIPROJECT"."ITEM_IMAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;

--------------------------------------------------------------------------------
CREATE TABLE "ORDER" (
	"ORDER_NUMBER"	NUMBER		NOT NULL,
	"ITEM_CODE"	VARCHAR2(1000)		NOT NULL,
	"BUYER_NAME"	VARCHAR2(1000)		NOT NULL,
	"BUYER_PHONE"	NUMBER		NOT NULL,
	"BUYER_ADDRESS"	VARCHAR2(3000)		NOT NULL,
	"BUYER_REQUEST"	VARCHAR2(3000)		NULL,
	"BUYER_EMAIL"	VARCHAR2(1500)		NULL,
	"BUY_TOTAL"	NUMBER		NOT NULL,
	"BUY_DATE"	DATE		NOT NULL,
	"ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "ORDER"."ORDER_NUMBER" IS '주문 번호';
COMMENT ON COLUMN "ORDER"."ITEM_CODE" IS '상품 코드';
COMMENT ON COLUMN "ORDER"."BUYER_NAME" IS '수령자 이름';
COMMENT ON COLUMN "ORDER"."BUYER_PHONE" IS '수령 번호';
COMMENT ON COLUMN "ORDER"."BUYER_ADDRESS" IS '수령 주소';
COMMENT ON COLUMN "ORDER"."BUYER_REQUEST" IS '수령 요청사항';
COMMENT ON COLUMN "ORDER"."BUYER_EMAIL" IS '수령자 이메일';
COMMENT ON COLUMN "ORDER"."BUY_TOTAL" IS '구매 가격';
COMMENT ON COLUMN "ORDER"."BUY_DATE" IS '구매한 날짜';
COMMENT ON COLUMN "ORDER"."ID" IS '아이디';

ALTER TABLE "ORDER" ADD CONSTRAINT "PK_ORDER" PRIMARY KEY (
	"ORDER_NUMBER",
	"ITEM_CODE"
);
ALTER TABLE "ORDER" ADD CONSTRAINT "FK_ITEM_TO_ORDER_1" FOREIGN KEY (
	"ITEM_CODE"
)
REFERENCES "ITEM" (
	"ITEM_CODE"
);

ALTER TABLE "ORDER" ADD CONSTRAINT "FK_USER_INFORMATION_TO_ORDER_1" FOREIGN KEY (
	"ID"
)
REFERENCES "USER_INFORMATION" (
	"ID"
);

--------------------------------------------------------------------------------
CREATE TABLE "IMAGE" (
	"KEY"	NUMBER		NOT NULL,
	"IMAGE_SRC"	VARCHAR2(30)		NOT NULL,
	"IMAGE_NAME"	VARCHAR2(20)		NOT NULL,
	"D_CODE"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "IMAGE"."KEY" IS '이미지파일 번호';
COMMENT ON COLUMN "IMAGE"."IMAGE_SRC" IS '이미지파일 경로';
COMMENT ON COLUMN "IMAGE"."IMAGE_NAME" IS '이미지파일 이름';
COMMENT ON COLUMN "IMAGE"."D_CODE" IS '식단날짜별코드';

ALTER TABLE "IMAGE" ADD CONSTRAINT "PK_IMAGE" PRIMARY KEY (
	"KEY"
);

ALTER TABLE "IMAGE" ADD CONSTRAINT "FK_DIET_TO_IMAGE_1" FOREIGN KEY (
	"D_CODE"
)
REFERENCES "DIET" (
	"D_CODE"
);

--------------------------------------------------------------------------------
CREATE TABLE "EDIT_LIST" (
	"IMAGE_EDIT"	VARCHAR(255)		NOT NULL
);
COMMENT ON COLUMN "EDIT_LIST"."IMAGE_EDIT" IS '이미지 관리';


--------------------------------------------------------------------------------
ALTER TABLE USER_INFORMATION MODIFY STATUS DEFAULT 'N';

CREATE SEQUENCE SEQ_DNO
START WITH 1 INCREMENT BY 1
MAXVALUE 9999
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_BNO
START WITH 1 INCREMENT BY 1
MAXVALUE 99999
NOCYCLE;

CREATE SEQUENCE SEQ_SNO
START WITH 1 INCREMENT BY 1
MAXVALUE 99999
NOCYCLE;

CREATE SEQUENCE SEQ_CNO
START WITH 1 INCREMENT BY 1
MAXVALUE 99999
NOCYCLE;

CREATE SEQUENCE SEQ_RNUM
START WITH 1
INCREMENT BY 1
MAXVALUE 99999;

ALTER TABLE REVIEW ADD (STAR VARCHAR2(100) NULL);
COMMIT;










