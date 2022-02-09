package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GoodsDAO;
import com.shop.model.GoodsVO;




@WebServlet("/DeleteGoodsCtrl")
public class DeleteGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String gcode = request.getParameter("gcode");
		int cnt=0;
		
		GoodsVO vo = new GoodsVO();
		vo.setGcode(gcode);
		
		GoodsDAO dao = new GoodsDAO();
		cnt=dao.deleteGoods(vo);
		if(cnt>0)response.sendRedirect("GetGoodsListCtrl");
	}

}
