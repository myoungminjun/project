package com.test.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.biz.HoewonDAO2;
import com.test.model.HoewonVO;

@WebServlet("/LogOutCtrl")
public class LogOutCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String hid = (String) session.getAttribute("hid");
		
		if(hid!=null) {
			session.invalidate();
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}
}