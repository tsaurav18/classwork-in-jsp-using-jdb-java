<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql. *" %>
<%
	String uid= request.getParameter("id");
	String upass= request.getParameter("ps");
	String upass2= request.getParameter("ps2");
	String uname= request.getParameter("nick");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns","root","kalutan18*");
	
	/* Statement st = conn.createStatement(); */
	//duplication check using select
	//String sql = "select id from user where id ='"+uid+"'";
	String sql = "select id from user where id =?";

	PreparedStatement st = conn.prepareStatement(sql);
	st.setString(1, uid);
	ResultSet rs=st.executeQuery();
	if(rs.next()){
		out.print("이미 가입한 회원입니다.");
	}	else{
	st.close();
	sql ="INSERT INTO user(id, password, name) VALUES(?,?,?)";
	st=conn.prepareStatement(sql);
	st.setString(1, uid);
	st.setString(2, upass);
	st.setString(3, uname);
	/* str+= "'"+uid+"', ";
	str+= "'"+upass+"', ";
	str+= "'"+uname+"'";
	str+=")";
	
 */	
	int cntt = st.executeUpdate();
	String res = (cntt == 0) ? "failed":"회원가입이 완료되었습니다.";
	out.print(res);
	}
	st.close();
	conn.close();

%>