package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.CustomDAO;
import com.shop.model.CustomVO;

@WebServlet("/DeleteCustomCtrl")
public class DeleteCustomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String cusid = request.getParameter("cusid");
		int cnt=0;
		
		CustomVO vo = new CustomVO();
		vo.setCusid(cusid);
		
		CustomDAO dao = new CustomDAO();
		cnt=dao.deleteCustom(vo);
		if(cnt>0)response.sendRedirect("GetCustomListCtrl");
	}

}
