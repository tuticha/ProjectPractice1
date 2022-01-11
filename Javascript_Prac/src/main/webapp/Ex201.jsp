<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Scanner sc = new Scanner(System.in);
		System.out.println("이름을 입력하세요: "); //서버에서 실행(출력)--이해	
		String name = sc.nextLine();
		out.println(name + "님, 안녕하세요!!");
	%>

</body>
</html>