<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//out.println("아이디 : " + request.getParameter("id"));
		//out.println("비밀번호 : " + request.getParameter("pw"));
		//out.println("이름 : " + request.getParameter("name"));
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "user1215";
		String db_pw = "user1234";
		
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, db_id, db_pw);
		} catch(Exception e) {   // ClassNotFoundException, SQLException
			e.printStackTrace();
		}
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		String sql = "INSERT INTO simple_member(id,pw,name) VALUES(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		int r = pstmt.executeUpdate();   // 리턴값 : 영향 받은 행의 개수.
		
		if(r==1) {
	%>
			<h1><%=name%>(<%=id%>)님, 회원가입 완료되었습니다.</h1>
	<%
		}
		
		conn.close();
	%>
</body>
</html>