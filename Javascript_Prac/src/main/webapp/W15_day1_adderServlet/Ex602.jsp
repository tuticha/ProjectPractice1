<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../Ex602Servlet">
		값1 :<input type="text" name="num1"/><br/>
		값2 :<input type="text" name="num2"/><br/>
		연산 : <select name="op">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
			<input type="submit" value="계산!">
	</form>

</body>
</html>