<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String uid = (String) session.getAttribute("uid");
    if(uid == null){
    	out.print("로그인 정보가 없습니다.");
    	
    }else{
    	out.print("main page. <br>");
    	out.print("login id: "+uid);
    	session.setAttribute("uid",uid);
    }
    
    %>