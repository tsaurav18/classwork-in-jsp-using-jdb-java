<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	
	if(uid ==null || uid.equals("")){
		out.print("no information about login");
		
	}
	else{
		session.setAttribute("uid", uid);
		response.sendRedirect("main.jsp");
	}

%>