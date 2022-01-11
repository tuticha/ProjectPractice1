<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String s1 = "안녕";
		String s2 = "JSP";
		out.println(s1 + s2);
		out.println("<h1>" +s1 + s2 + "</h1>");
	%>
	
</body>
</html>