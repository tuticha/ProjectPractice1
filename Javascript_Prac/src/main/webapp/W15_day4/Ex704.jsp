<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
	$(function(){
		$("#btn_login").click(function(){
			var id_value = $("#id").val();
			var pw_value = $("#pw").val();
			
			$.ajax({
				type:"post",
				url: "../Ex704_loginServlet",
				data: {"id": id_value, "pw":pw_value},
				datatype: "json",
				success: function(data){
					alert(data.login_check);	//1 또는 0(약속)
				},
				error: function(request, status, error){
					alert("에러!");
				}
			});
		})
	})
</script>
</head>
<body>
	<div>
		ID : <input type ="text" id ="id"/><br/>
		PW : <input type ="password" id ="pw"/><br/>
		<button id="btn_login">로그인</button>	
		
	</div>
		
</body>
</html>