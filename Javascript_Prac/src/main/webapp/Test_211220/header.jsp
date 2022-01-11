<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
</head>
<style>
	.memberBox {text-align: right;}
	.logoBox {text-align: center;}
	.logoBox img {width: 300px; height: 200px; cursor: pointer;}
	
	.navBox ul {display: flex;}
	.navBox ul {width: 700px; margin: 20px auto 0 auto; padding: 0;}
	.navBox ul li {list-style: none;}
	.navBox ul li {border: 1px solid black; padding: 10px 20px 10px 20px; cursor: pointer;}
	
	.navBox ul li:hover {border-radius: 50%; border: 1px solid red; background-color: red; color: white;}
</style>

<script>
	function getUrlParams() {
	    var params = {};
	    window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { 
	    	params[key] = value; 
	    });
	    return params;
	}
	$(function() {
		// 아이디 있는지 여부 체크해서 텍스트 집어넣기
		/* var id = '${param.id}'; */
		param = getUrlParams();
		
		var id = param.id;
		
		console.log(id);
		if (id != null || id != 'undefined' /* && id != '' */) {
			$('.logBtn').text('로그아웃');
			$('.signUpBtn').remove();
		} else {
			$('.logBtn').text('로그인');
		}
		
		// 로그인 여부에 따라 이동할 페이지 설정
 		$('.logBtn').click(function() {
			if (id != 'null' && id != '') {
				location.href = 'main.jsp';
			} else {
				location.href('login.jsp');
			}
		});

		/* $('.logBtn').click(function() {
			var logInBtnText = $('.logBtn').text();
			if (logInBtnText == '로그아웃') {
				location.href = 'main.jsp';
			} else if (logInBtnText == '로그인') {
				window.open('login.jsp');
			}
		});  */
		
		 

		$('.logoBox img').click(function() {
			location.href = "main.jsp"
		})
		
		$('.navBox > ul > li').click(function() {
			var text = $(this).text();
			switch(text) {
			case '네이버' : location.href = 'https://naver.com'; break;
			case '구글' : location.href = 'https://google.com'; break;
			case '다음' : location.href = 'https://daum.net'; break;
			case '카카오' : location.href = 'https://kakao.com'; break;
			default : alert('연결된 페이지가 없습니다.'); break;
			}
		});
	})
</script>
<body>
	<div class="memberBox">
		<button class="logBtn">로그인</button>
		<button class="signUpBtn" onclick="location.href = 'signUp.jsp'">회원가입</button>
	</div>
	<div class="logoBox">
		<img src="../img/logo.svg" alt="logo">
	</div>
	<div class="navBox">
		<ul>
			<li onclick="window.open('https://naver.com')">네이버</li>
			<li>구글</li>
			<li>다음</li>
			<li>카카오</li>
			<li onclick="alert('연결된 페이지가 없습니다!')">없음1</li>
			<li>없음2</li>
			<li>없음3</li>
			<li>없음4</li>
		</ul>
	</div>
</body>
</html>