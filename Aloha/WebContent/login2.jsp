<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String uid = request.getParameter("id");
String upass = request.getParameter("ps");
String str = "input ID: "+ uid+"<br>";
 str+= "pass: "+ upass;
out.print(str);


String date = (new Date()).toString();
%>
<br>
login time :<%= date %>
<br><br>
<br>
<%
	int count =0;
	String sval = (String) application.getAttribute("counter");
	if(sval!= null){
		count = Integer.valueOf(sval);
	}
	count++;
	out.print("방문자수:"+count);
	application.setAttribute("counter", String.valueOf(count));
%>

</body>
</html> --%>