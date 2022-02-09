package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GoodsDAO;
import com.shop.model.GoodsVO;


@WebServlet("/UpdateGoodsCtrl")
public class UpdateGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String gcode = request.getParameter("gcode");
		String gname  = request.getParameter("gname");
		int gprice = Integer.parseInt(request.getParameter("gprice"));
		int gcnt = Integer.parseInt(request.getParameter("gcnt"));
		String gimg  = request.getParameter("gimg");
		
		GoodsVO vo = new GoodsVO();
		vo.setGcode(gcode);
		vo.setGname(gname);
		vo.setGprice(gprice);
		vo.setGcnt(gcnt);
		vo.setGimg(gimg);
		
		GoodsDAO dao = new GoodsDAO();
		int cnt = dao.updateGoods(vo);
		if(cnt>0)response.sendRedirect("GetGoodsCtrl");
		
	}
}
