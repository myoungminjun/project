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


@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String hid = request.getParameter("hid");
		String hpw = request.getParameter("hpw");


		HoewonVO vo = new HoewonVO();
		vo.setHid(hid);
		vo.setHpw(hpw);

		HoewonVO hoewon = new HoewonVO();	
		HoewonDAO2 dao = new HoewonDAO2();	
		hoewon = dao.gethoewon(vo);

		HttpSession session = request.getSession();// 서블릿은 세션을 자동으로 가져오지 못해서 이렇게 처리함


		session.setAttribute("hid", hoewon.getHid());
		session.setAttribute("hname", hoewon.getHname());
		if(hid.equals("admin") && hpw.equals("1234")){
			response.sendRedirect("admin.jsp");
		} else if(hid!="admin" && hpw!="1234") {
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}	

	}
}


