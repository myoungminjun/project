package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.InformDAO;
import com.shop.model.InformVO;


@WebServlet("/AddInformCtrl")
public class AddInformCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
	

		String intit = request.getParameter("intit");
		String incon = request.getParameter("incon");
		String inname = request.getParameter("inname");	
		InformVO vo = new InformVO ();

		vo.setIntit(intit);
		vo.setIncon(incon);
		vo.setInname(inname);		
		InformDAO dao = new InformDAO();
		int cnt = dao.addInform(vo);	
		if(cnt>0) {
			response.sendRedirect("GetInformListCtrl");			
		}else {
			response.sendRedirect("/inform/addInform.jsp");
		}
	}

}
