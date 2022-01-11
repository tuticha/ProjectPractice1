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
	// Ex204.jsp?a=3&b=7
	String a = request.getParameter("a");     // String a = "3";
	String b = request.getParameter("b");	  // String b = "7";
	int n1 = Integer.parseInt(a);	// int n1 = Integer.parseInt("3");
	int n2 = Integer.parseInt(b);	// --> int n1 = 3;
	
	int sum = 0;
	for(int i=n1; i<=n2; i++) {
		out.print(i);
		if(i<n2)
			out.print("+");
		sum += i;
	}
	out.println("=" + sum);
%>
</body>
</html>
