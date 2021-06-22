# 폴더 업로드
  -

# src > user > controller
- login.me) 로그인 성공시 -> Home.jsp(calendar)로 연결
- insert.me) 회원가입 성공시 -> 로그인 화면으로 연결


# WEB-INF > view > user
- signUp : 회원가입폼 - ID중복체크, PWD비밀번호일치, NOT NULL 항목 미입력시 유효성검사 구현

# WEB-INF > view > board
- boardList.jsp : 운동멤버 게시판 상세보기 화면

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
 
# CSS, IMG, JS, LIB, MAIL
 - 템플릿에 필요한 폴더 업로드
 - WEB-INF/css/shoppingcss/style.css (shopping tab css 추가)
 - boardList.jsp에 있는 게시판 css 수정 

# menu.jsp
- 상단 로그인 정보 보이기
- 로그아웃 기능
- shopping 탭 연결 태그 추가
- board 탭 연결 

# footer.jsp
- 하단 footer부분

# WEB-INF > src > board
- controller, model 두 부분으로 나눔 
- controller에 게시판 연결 서블릿(boardListServlet)추가 
- model을 dao, service, vo로 나누고 vo 부분에 board(회원 정보), pageInfo(페이징 정보) 추가

# WEB-INF > src > query
- board폴더를 생성시켜 board-query 게시물 쿼리 파일을 추가 
