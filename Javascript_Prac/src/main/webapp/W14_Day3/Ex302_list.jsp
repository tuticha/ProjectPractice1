<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sj.vo.*" %>

<%
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
	
	ArrayList<SimpleBoardVO> listBoard = new ArrayList<SimpleBoardVO>();
	String sql = "SELECT * FROM simple_board ORDER BY bno DESC";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		int bno = rs.getInt("bno");
		String title = rs.getString("title");
		String content = rs.getString("content");
		String writer = rs.getString("writer");
		String writedate = rs.getString("writedate");
		int hitcount = rs.getInt("hitcount");
		listBoard.add(new SimpleBoardVO(bno,title,content,writer,writedate,hitcount));		
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table { border-collapse: collapse; }
	table, th, td { border:1px solid #7f7f7f; }
	th, td { padding: 10px; }
</style>
</head>
<body>
	<a href="Ex302_write.jsp">글 작성</a>
	
	<h1>테스트 게시판 1215</h1>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일시</th>
			<th>조회수</th>
		</tr>
		<%
		for(SimpleBoardVO vo : listBoard) {
		%>
			<tr>
				<td><%=vo.getBno() %></td>
				<td><%=vo.getTitle() %></td>
				<td><%=vo.getContent() %></td>
				<td><%=vo.getWriter() %></td>
				<td><%=vo.getWritedate() %></td>
				<td><%=vo.getHitcount() %></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>










