<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql. *" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns","root","kalutan18*");
	
	Statement st = con.createStatement();
	String str = "<table border=1>";
	ResultSet rs  = st.executeQuery("SELECT no, id, content, ts from feed");
	while(rs.next()){
		str+="<tr>";
		str+="<td width=150>"+ rs.getString("no")+"</td>";
		str+="<td width=150>"+ rs.getString("id")+"</td>";
		str+="<td width=150>"+ rs.getString("content")+"</td>";
		str+="<td width=150>"+ rs.getString("ts")+"</td>";
		str+= "<td><a href='feedDelete.jsp?no="+ rs.getString("no")+"'>";
		str+="<button>삭제</button>";
		str+="</a></td>";
		str+= "</tr>";
		
	}
	str+= "</table>";
	out.print(str);
	rs.close();
	st.close();
	con.close();
%>