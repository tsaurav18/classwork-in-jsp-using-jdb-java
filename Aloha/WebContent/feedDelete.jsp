<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql. *" %>
<%
	String uno= request.getParameter("no");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns","root","kalutan18*");
	
	Statement st = conn.createStatement();
	
	String sql = "delete from feed where no ='"+uno+"'";
	int cnt= st.executeUpdate(sql);
	
	String res = (cnt == 0) ? "feed 삭제 중 에러가 발생하였습니다.":"삭제가 완료되었습니다.";
	out.print(res);
	
	st.close();
	conn.close();

%>
