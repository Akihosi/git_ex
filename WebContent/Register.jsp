<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function check_form() {
		var id = document.reg_form.id.value;
		var pw = document.reg_form.pw.value;
		if(id == null || id.length < 4){
			alert("아이디는 4글자 이상이어야 한다!");
			document.getElementById('document.reg_form.id').focus();
			return false;
		}else if(pw == null || pw.length<6){
			alert("비밀번호는 6자리 이상이어야 한다");
			document.getElementById('document.reg_form.pw').focus();
			return false;
		}
		return true;
	}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	Connection conn = null;
	String sql = null;
	PreparedStatement pstmt = null;
	String url1 = "jdbc:sqlserver://localhost:1433;databaseName=test;user=Ryosu;password=qazwsx1234+;";
	conn = DriverManager.getConnection(url1);

%>

	<form name="reg_form" method="post" action="Register_proc.jsp" onsubmit="return check_form()">
		이름 : <input type="text" name=name><br>
		아디 : <input type="text" name=id><br>
		비번 : <input type="password" name=pw><br>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>