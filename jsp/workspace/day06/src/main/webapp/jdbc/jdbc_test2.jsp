<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "jsp";
	String password = "jsp";
	Class.forName(driver);
	conn = DriverManager.getConnection(url, user, password);
	
	String sql = "SELECT * FROM CAR";
	PreparedStatement pstm = conn.prepareStatement(sql);
	
	ResultSet rs = pstm.executeQuery();
	
	while(rs.next()){
		out.print("차번호 : " + rs.getString(1) + "<br/>");
		out.print("브랜드 : " + rs.getString("BRAND") + "<br/>");
		out.print("색상 : " + rs.getString(3) + "<br/>");
		out.print("가격 : " + rs.getInt("price") + "원<br/>");
		out.print("<hr><br/>");
		}
	
	out.print("<br/><hr>");
	String carnum = "3";
	//sql = "SELECT * FROM CAR WHERE CARNUM = '" + carnum + "'";
	//SELECT * FROM CAR WHERE CARNUM = '3'
	sql = "SELECT * FROM CAR WHERE CARNUM = ?";
	pstm = conn.prepareStatement(sql);
	pstm.setString(1, carnum);
	
	rs = pstm.executeQuery();
	if(rs.next()){
		out.print("차번호 : " + rs.getString(1) + "<br/>");
		out.print("브랜드 : " + rs.getString("brand") + "<br/>");
		out.print("색상 : " + rs.getString(3) + "<br/>");
		out.print("가격 : " + rs.getInt("price") + "원<br/>");
		out.print("<hr><br/>");
	}
	
	
	// 객체 반납을 해야함
	rs.close();
	pstm.close();
	conn.close();
%>
</body>
</html>