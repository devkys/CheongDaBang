<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // 1. 보낸 데이터를 받자.
    String id = request.getParameter("id");
    String color = request.getParameter("color");
    String city = request.getParameter("city");
    
    // 2. JDBC프로그래밍
    // 2-1) 드라이버 설정
	// 2-2) db연결(url,id,pw)
	// 2-3) SQL문 객체 생성
	// 2-4) SQL문 전송

 		//jsp에서 자동 import : 클릭하고 ctrl + shift + m   
		Class.forName("com.mysql.cj.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
		String user = "root";
		String password = "1234";

		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "insert into city values (?, ?, ?)";

		PreparedStatement ps = con.prepareStatement(sql); 
		ps.setString(1, id); 
		ps.setString(2, color); 
		ps.setString(3, city);

		int result = ps.executeUpdate(); // db에 업데이트 해라
		
		ps.close();
		con.close();
	
    // 3. 결과를 보내자
    %>