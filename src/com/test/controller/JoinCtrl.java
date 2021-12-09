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


@WebServlet("/JoinCtrl")
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		String hid = request.getParameter("hid");
		String hpw = request.getParameter("hpw");
		String hname = request.getParameter("hname");
		String htel = request.getParameter("htel");
		String hemail = request.getParameter("hemail");
		
		
		
		HoewonVO vo = new HoewonVO();
		vo.setHid(hid);
		vo.setHpw(hpw);
		vo.setHname(hname);
		vo.setHtel(htel);
		vo.setHemail(hemail);
	
		
		HoewonDAO2 dao = new HoewonDAO2();
		HoewonVO hoewon = new HoewonVO();
		//받을객체 = DAO객체명.메서드명(vo)
		int cnt = dao.addHoewon(vo);
		HttpSession session = request.getSession();
		
		if(cnt>0) {
			response.sendRedirect("login.jsp");
		}  else {
			response.sendRedirect("join.jsp");
		}
	}
}
		
		