<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql. *" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns","root","kalutan18*");
	
	Statement st = conn.createStatement();
	String str = "<table border=1>";
	ResultSet rs  = st.executeQuery("SELECT id, name, ts, password from user");
	while(rs.next()){
		str+="<tr>";
		str+="<td width=100>"+ rs.getString("id")+"</td>";
		str+="<td width=100>"+ rs.getString("name")+"</td>";
		str+="<td width=100>"+ rs.getString("ts")+"</td>";
		str+= "<td><a href='userDelete.jsp?id="+ rs.getString("id")+"'>";
		str+="<button>삭제</button>";
		str+="</a></td>";
		str+= "</tr>";
		
	}
	str+= "</table>";
	out.print(str);
	rs.close();
	st.close();
	conn.close();
%>