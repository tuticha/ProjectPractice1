<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.loginBox {width: 1200px; margin: 100px auto; text-align: center;}
	.loginBox > div > input {width: 300px; height: 50px; margin-bottom: 10px;}
	.loginBox > div > button {width: 300px; border-radius: 10px; color: white; background-color: black; height: 50px;}
</style>
<script>
	$(function() {
		$('.loginBox button').click(function() {
			if($('#memberID').val() == '') {
				alert('아이디를 입력하세요.');
				return;	// return은 '끝내라' 라는 의미
			}
			
			if($('#memberPW').val() == '') {
				alert('비밀번호를 입력하세요.');
				return;
			}
			
			//이 사람이 로그인 했는 지 안했는 지에 대한 여부를 확인하기위해서
			location.href = 'main.jsp?id='+$('#memberID').val();
		})
	})
</script>
<body>
	<div class="loginBox">
		<div>
			<input type="text" placeholder="아이디를 입력하세요" id="memberID"/>
		</div>
		<div>
			<input type="password" placeholder="******" id="memberPW"/>
		</div>
		<div>
			<button>로그인</button>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp" %>