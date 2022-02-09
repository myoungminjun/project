package com.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.biz.CustomDAO2;
import com.shop.model.CustomVO;

@WebServlet("/JoinCtrl")
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String cusid = request.getParameter("cusid");
		String cuspw = request.getParameter("cuspw");
		String cusname = request.getParameter("cusname");
		String custel = request.getParameter("custel");
		int cuszipcode = Integer.parseInt(request.getParameter("cuszipcode"));
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		
		CustomVO vo = new CustomVO();
		vo.setCusid(cusid);
		vo.setCuspw(cuspw);
		vo.setCusname(cusname);
		vo.setCustel(custel);
		vo.setCuszipcode(cuszipcode);
		vo.setAdd1(add1);
		vo.setAdd2(add2);
		
		CustomDAO2 dao = new CustomDAO2();
		CustomVO custom = new CustomVO();

		int cnt = dao.addCustom(vo);
		HttpSession session = request.getSession();
		
		if(cnt>0) {
			response.sendRedirect("login.jsp");
		}  else {
			response.sendRedirect("join.jsp");
		}
	}
}