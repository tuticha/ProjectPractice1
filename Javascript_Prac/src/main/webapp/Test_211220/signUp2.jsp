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
	.signUpBox {margin: 100px auto; text-align: center; width: 590px;}
	
   	input[type=text] {width: 232px;}	
   	input[type=password] {width: 232px;}	
   .isAgreed {padding: 20px 0;}
   .submitBox {text-align: center;}
</style>
<script>
	$(function() {
		$('#signUpSubmit').click(function(){
			/* if ($('select').val() == '서식지 선택') {
				alert('서식지를 선택해 주세요.');
				return;
			} */
			
			
		})
	});
</script>
<body>
	<div class="signUpWrap">
		<h1>회원가입 페이지</h1>
		
		<div class="signUpBox">
			<form action="login.jsp">
				<table style="border:3px solid black;">
					<tr>
						<td>아이디</td>
						<td><input type="text" placeholder="아이디" required="required"/></td>
						<td colspan="2"></td>
			      	</tr>
			     	<tr>
			        	<td>비밀번호</td>
		         		<td><input id="pw" type="password" placeholder="비밀번호" required="required"></td>
			         	<td colspan="2"></td>
			      	</tr>
			      	<tr>
			         	<td>이름</td>
			         	<td><input type="text" placeholder="이름" required="required" /></td>
			         	<td colspan="2"></td>
			      	</tr>
			      	<tr>
			         	<td>나이</td>
			         	<td><input type="text" placeholder="나이" required="required"/></td>
			         	<td colspan="2"></td>
			      	</tr>
			      	<tr>
			         	<td>이메일</td>
			         	<td><input type="text" placeholder="이메일" required="required"/></td>
			         	<td>@</td>
			         	<td><input type="text" placeholder="직접 입력" required="required" /></td>
			      	</tr>
			      	<tr>
			         	<td>성별</td>
			         	<td>
				            <input type="radio" name="gender" id="male" required="required"/>
			            	<label for="male">남자</label>
			            	<input type="radio" name="gender" id="female"/>
			            	<label for="female">여자</label>
			         	</td>
			         	<td colspan="2"></td>
			      	</tr>
			      	<tr>
			         	<td>취미</td>
			         	<td> 
				            <input type="checkbox" name="hobby" id="exec"/>
			            	<label for="exec">운동</label>
			            	<input type="checkbox" name="hobby" id="movie"/>
			            	<label for="movie">영화</label>
			            	<input type="checkbox" name="hobby" id="game"/>
			            	<label for="game">게임</label>
			            	<input type="checkbox" name="hobby" id="book"/>
			            	<label for="book">책</label>
			         	</td>
			         	<td colspan="2"></td>
			      	</tr>
			      	<tr>
			         	<td>서식지</td>
			         	<td>
			            	<select>
			               	<option>서식지 선택</option>               
			               	<option>서울</option>               
			               	<option>대전</option>               
			               	<option>부산</option>               
			               	<option>광주</option>               
				            <option>인천</option>               
			               	<option>제주</option>               
			               	<option>국외</option>               
			            	</select>
				        </td>
			         	<td colspan="2"></td>
			      	</tr>
			      	<tr>
			         	<td colspan="4" class="isAgreed">
			            	<span>개인정보취급방침에 동의함</span>
			            	<input type="radio" name="isAgree" id="agree" />
			            	<label for="agree">동의함</label>
			            	<input type="radio" name="isAgree" id="disAgree" />
			            	<label for="disAgree">동의안함</label>
			         	</td>
			      	</tr>
			      	<tr>
			         	<td colspan="4" class="submitBox">
				            <input type="submit" value="제출하기" id="signUpSubmit" />
			            	<input type="reset" value="내용 비우기" />
			         	</td>
			      	</tr>
			   	</table>
			</form>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp" %>