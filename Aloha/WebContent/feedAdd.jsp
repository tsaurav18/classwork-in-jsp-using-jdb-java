<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql. *" %>
<%
	String userid= request.getParameter("id");
	String ucontent= request.getParameter("contents");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns","root","kalutan18*");
	
	Statement stm = conn.createStatement();
	
	String str ="INSERT INTO feed(id, content) VALUES(";
	str+= "'"+userid+"', ";
	str+= "'"+ucontent+"'";
	str+=")";
	
    int contt = stm.executeUpdate(str);
	String res = (contt == 0) ? "failed":"successfully added";
	out.print(res); 
	stm.close();
	conn.close();

%>
