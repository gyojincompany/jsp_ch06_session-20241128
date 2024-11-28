<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); // utf-8 인코딩
		
		String memberid = request.getParameter("mid");//로그인 아이디
		String memberpw = request.getParameter("mpw");//로그인 비번
		
		// 회원아이디가 tiger이고 비밀번호가 12345일 경우에만 로그인 성공
		if((memberid.equals("tiger")) && (memberpw.equals("12345"))) {
			
			session.setAttribute("validMem", "yes");//로그인 여부만 확인
			session.setAttribute("sessionId", memberid);//세션에 아이디 저장하기
			session.setAttribute("sessionPw", memberpw);//세션에 아이디 저장하기
			session.setAttribute("asessionName", "김유신");//세션에 아이디 저장하기
			session.setAttribute("sessionName", "홍길동");//세션에 아이디 저장하기
			
			out.println(memberid+"님 로그인 성공!!");
		} else {
			out.println("로그인 실패!!아이디와 비번을 다시 확인하세요.");
		}
	
	%>
	<br><br>
	<a href="myinfo.jsp">내 정보보기 페이지로 가기</a>
	<br><br>
	
	
</body>
</html>