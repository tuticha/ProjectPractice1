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
		//파라미터로부터 값을 가져오기:
		//(scriptlet 안에서) request.getParameter(파라미터이름)->문자열 리턴.
		
		//ex.파라미터 num의 값을 출력
		String p = request.getParameter("num");
		out.println("파라미터 num :"+ p);
	%>

</body>
</html>