package com.test.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.HoewonDAO;
import com.test.model.HoewonVO;


@WebServlet("/DeleteHoewonCtrl")
public class DeleteHoewonCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String hid = request.getParameter("hid");
		int cnt = 0;
		HoewonVO vo = new HoewonVO();
		vo.setHid(hid);
		
		
		HoewonDAO dao = new HoewonDAO();
		cnt = dao.deleteHoewon(vo);
		if(cnt>0)response.sendRedirect("GetHoewonListCtrl");
	}

}
