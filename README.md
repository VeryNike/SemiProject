# 폴더 업로드
  - WEB-INF> Team> team.jsp
  - src> Team > AboutUsServlet.java ( /team.me)
  - src/shopping 폴더 업로드
  - src/query/shopping.properties 업로드
  - WEB-INF/view/shopping 폴더 업로드
  - WebContent/img 폴더 업로드
  - WebContent/overlays 폴더 및 파일 업로드 (vegas plugin)
  - WebContent/css/vegas 폴더 및 파일 업로드 (vegas plugin)
  - WebContent/js/vegas 폴더 및 파일 업로드 (vegas plugin)
  
# menu.jsp
- 상단 로그인 정보 보이기
- 로그아웃 기능
- shopping 탭 연결 태그 추가
- board 탭 연결 
- Team 탭 연결
- <%loginUser!=null%>때만 mypage,logout 보이게하기 (비회원은 가리기)

# KakaoPay API 추가
- totalPrice 변수 추가 호출
- 구매 성공 , 취소 경로 window.location.href 태그로 서블릿 이동 코드 추가


# WEB-INF > Diet > diet.jsp
- 왼쪽 이미지탭 클릭시 중앙탭 textarea에 값 이동
- textarea 글자수 동적검사 /100 ( 이미지내용+입력내용 )
- Save 버튼 클릭시 유효성검사 - 날짜 미입력, textarea 미입력
- 오른쪽 기록 목록 테이블 -> 현재 전체삭제버튼 ( 선택 삭제 버튼으로 수정중)

# WEB-INF > view > user
- signUp : 회원가입폼 - ID중복체크, PWD비밀번호일치, NOT NULL 항목 미입력시 유효성검사 구현
- 유효성검사: 나이-숫자정규식, 전화번호 정규식(01*-***-***), 이메일 정규식(---@--.-), 빈칸 검사
- 비회원 들어가기 -> Team 탭으로 연결

# WEB-INF > view > board
- boardList.jsp : 운동멤버 게시판 상세보기 화면 완료 (카드형 게시판 크기 수정 완료!!!!!)
- boardAdd.jsp : 운동멤버 게시판 글쓰기 화면 완료
- boardDetail.jsp : 운동멤버 게시판 상세보기 화면 완료
- boardUpdateForm.jsp : 운동멤버 게시판 수정 화면 완료

# index.jsp
  - UTF-8 인코딩 코드 최상단 추가 완료
  - 카테고리의 Trainer를 Member로 수정 완료
  - 카테고리의 class를 Shopping으로 수정 완료
  - login include

# DB.sql
 - SemiProject DB 파일 생성
 - USER_INFORMATION TABLE 포함 모든 카테고리 TABLE 생성
 - USER_INFORMATION TABLE - STATUS COLUMN 추가 (회원탈퇴여부)
 - USER_INFORMATION TABLE 컬럼변경 -PHONE TYPE, GENDER, M_RATING
 - USER_INFORMATION TABLE - SORTATION, M_RATING, STATUS 3항목 NOT NULL -> 회원가입시 DB문제 발생 -> 초기값 NULL로 변경
 - PT TABLE 내용 
 - ITEM TABLE (DROP,CREATE,DATA INSERT,PK ALERT) 
 - ITEM_IMAGE TABLE (CREATE,DATA INSERT,PK ALERT, DEFAULT ALERT)
 - BOARD TABLE 업데이트
 - CATEGORY TABLE 업데이트
 
# CSS, IMG, JS, LIB, MAIL
 - 템플릿에 필요한 폴더 업로드
 - WEB-INF/css/shoppingcss/style.css (shopping tab css 추가)
 - boardList.jsp에 있는 게시판 css 수정 
 - WEB-INF/shopping/shopping.jsp 와 productdetail css 경로 주석처리 <head>태그에 <style>태그로 수정
 - img/bg1.jpg , bg2.jpg , bg3.jpg , checkbg.jpg 추가
 - img/1.mp4 (vide plug in 구동 영상파일 추가)

# footer.jsp
- 하단 footer부분

# WEB-INF > src > board
- controller, model 두 부분으로 나눔 
- controller에 게시판 연결 서블릿(boardListServlet)추가 
- model을 dao, service, vo로 나누고 vo 부분에 board(회원 정보), pageInfo(페이징 정보) 추가

# src > user > 
- login.me) 로그인 성공시 -> Home.jsp(calendar)로 연결
- insert.me) 회원가입 성공시 -> 로그인 화면으로 연결

# WEB-INF > src > query
- board폴더를 생성시켜 board-query 게시물 쿼리 파일을 추가 
  shopping.properties 추가

# WebContent/css/shoppingcss
  bootstrap css 전체 추가

# src/common/Common.java
메소드추가
# src/common/JDBCTemplate.java
메소드추가
  
# shopping 장바구니 추가 삭제 기능 구현
- WebContent/view/shopping/cart.jsp
- src/shopping/controller/CartPageServlet

# WebContent/js/main.js
  vegas plugin 코드 추가
  vide plugin 폴더 추가

# WEB-INF/views/shopping/checkout.jsp
  리디자인 및 코드정리 vegas plugin 추가
  
# WEB-INF/views/shopping/cart.jsp
  checkout.jsp 로 데이터넘기기위해 checkout 버튼에 checkout.me 서블릿 연결 코드 추가
  
# WEB-INF/views/shopping/ordersuccess.jsp
  리디자인 및 코드정리 vide plugin 추가 

#src/shopping/controller/OrderFormPageServlet.java 
  checkout.jsp 로 데이터넘기기위한 코드 추가
  
#src/shopping/model/service/ItemService.java	
  checkout.jsp 로 데이터넘기기위한 코드 추가
  
#src/shopping/model/dao/ItemDAO.java	
  checkout.jsp 로 데이터넘기기위한 코드 추가
