<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String uid = (String) session.getAttribute("id");
	String upw = (String) session.getAttribute("pw");
	String uname = (String) session.getAttribute("name");
	

	if(uid!=null) {
		session.invalidate();

	}

	response.sendRedirect("index.jsp");
%>