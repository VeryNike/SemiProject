# 폴더 업로드
  - src > board, common, user, query 생성
  - WebContent > WEB-INF > view > common, user 생성 
  - 회원가입폼 - ID중복체크, PWD비밀번호일치, NOT NULL 항목 미입력시 유효성검사 구현
  - 회원가입 완료-> 로그인 화면으로 연결

# index.jsp
  - UTF-8 인코딩 코드 최상단 추가 완료
  - 카테고리의 Trainer를 Member로 수정 완료
  - 카테고리의 class를 Shopping으로 수정 완료

# DB.sql
 - SemiProject DB 파일 생성
 - USER_INFORMATION TABLE 포함 모든 카테고리 TABLE 생성
 - USER_INFORMATION TABLE - STATUS COLUMN 추가 (회원탈퇴여부)
 - USER_INFORMATION TABLE 컬럼변경 -PHONE TYPE, GENDER, M_RATING
 - USER_INFORMATION TABLE - SORTATION, M_RATING, STATUS 3항목 NOT NULL -> 회원가입시 DB문제 발생 -> 초기값 NULL로 변경
 
# CSS, IMG, JS, LIB, MAIL
 - 템플릿에 필요한 폴더 업로드
