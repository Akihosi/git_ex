<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
	/* String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw"); */
	Connection conn = null;
	String sql = null;
	String url1 = "jdbc:sqlserver://localhost:1433;databaseName=test;user=Ryosu;password=qazwsx1234+;";
	conn = DriverManager.getConnection(url1);
	PreparedStatement pstmt = conn.prepareStatement("insert into MEMBER values(?, ?, ?)");
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	pstmt.setString(3, pw);
	
	pstmt.executeUpdate();
	
	conn.commit();
	
	response.sendRedirect("Register.jsp");
	
%>
<%-- </head>
<body>
	<%=name %>님!<br>
	당신의 정보가 (id : <%=id %>이고 pw : <%= pw %>)입니다!
</body>
</html> --%>