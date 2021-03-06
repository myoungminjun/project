package com.company.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogOutCtrl")
public class LogOutCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sid = (String) session.getAttribute("id");
		String sname = (String) session.getAttribute("name");
		if(sid!="") {
			session.invalidate(); //세션 값 모두 날리기
		}
		response.sendRedirect("index.jsp");
	}

}
