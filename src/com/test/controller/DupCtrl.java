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

@WebServlet("/DupCtrl")
public class DupCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String hid = request.getParameter("hid");
		
		if(hid==null) {
			response.sendRedirect("idcheck.jsp?pass=1");	
		}
		HoewonVO vo = new HoewonVO();
		vo.setHid(hid);
		
		HoewonDAO2 dao = new HoewonDAO2();
		int cnt = dao.dupCheck(vo);
		response.sendRedirect("idcheck.jsp?pass="+cnt);
	}
}
