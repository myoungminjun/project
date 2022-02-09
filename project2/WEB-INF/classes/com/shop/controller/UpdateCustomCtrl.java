package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.CustomDAO;
import com.shop.model.CustomVO;




@WebServlet("/UpdateCustomCtrl")
public class UpdateCustomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
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
		
		
		CustomDAO dao = new CustomDAO();
		int cnt = dao.updateCustom(vo);
		if(cnt>0)response.sendRedirect("index.jsp");
		
	}
}
