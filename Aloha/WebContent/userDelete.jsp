<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql. *" %>
<%
	String uid= request.getParameter("id");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns","root","kalutan18*");
	
	/* Statement st = conn.createStatement(); */
	
	/* String sql = "delete from user where id ='"+uid+"'"; */
	String sql = "delete from user where id =?";
	PreparedStatement st = conn.prepareStatement(sql);
	st.setString(1,uid);
	int cnt= st.executeUpdate();
	
	String res = (cnt == 0) ? "회원삭제 중 에러가 발생하였습니다.":"회원 삭제가 완료되었습니다.";
	out.print(res);
	
	st.close();
	conn.close();

%>