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
	.signUpWrap {width: 1200px; margin: 100px auto; text-align: center;}
	.personalInfo1, .personalInfo2 {border: 1px solid black; height: 300px; overflow-y: scroll; overflow-x: hidden;}
</style>
<script>
	$(function() {
		$('.personalInfo1').load('main.jsp');
		$('.personalInfo2').load('main.jsp');
		
		$('.signUpWrap button').click(function() {
			var isAgree1 = $('#isAgree1').is(':checked');
			if (isAgree1 == false) {
				alert('개인정보이용처리약관1를 체크해주세요.');
				return;
			}
			
			var isAgree2 = $('#isAgree2').is(':checked');
			if (isAgree2 == false) {
				alert('개인정보이용처리약관2를 체크해주세요.');
				return;
			}
			
			location.href = 'signUp2.jsp';
		})
	});
</script>
<body>
	<div class="signUpWrap">
		<h1>회원가입 페이지</h1>
		
		<h3>개인정보이용처리약관1</h3>
		<div class="personalInfo1"></div>
		동의 함 <input type="checkbox" id="isAgree1" />
		
		<h3>개인정보이용처리약관2</h3>
		<div class="personalInfo2"></div>
		동의 함 <input type="checkbox" id="isAgree2" />
		
		<button>회원가입 하기</button>
	</div>
</body>
</html>
<%@ include file="footer.jsp" %>