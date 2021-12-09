package com.test.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.HoewonDAO;
import com.test.model.HoewonVO;

@WebServlet("/UpdateHoewonCtrl")
public class UpdateHoewonCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
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
		
		HoewonDAO dao = new HoewonDAO();
		int cnt = dao.updatehoewon(vo);
		if(cnt>0)response.sendRedirect("GetHoewonListCtrl");
		
	}
}
