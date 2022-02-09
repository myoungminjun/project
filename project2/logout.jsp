<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String cusid = (String) session.getAttribute("cusid");
	String cuspw = (String) session.getAttribute("cuspw");


	if(cusid!=null) {
		session.invalidate();

	}

	response.sendRedirect("index.jsp");
%>