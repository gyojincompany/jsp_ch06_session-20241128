<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%	
		//session.removeAttribute("validMem");//세션의 특정 속성만 삭제
		session.invalidate();//모든 세션의 속성을 삭제->완전 로그아웃
	%>
	<a href="myinfo.jsp">내정보 바로가기</a>
</body>
</html>