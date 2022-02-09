package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GoodsDAO;
import com.shop.model.GoodsVO;



@WebServlet("/GetGoodsCtrl")
public class GetGoodsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ServletContext application;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gcode = request.getParameter("gcode");
		GoodsVO vo = new GoodsVO();
		vo.setGcode(gcode);
		
		GoodsDAO dao = new GoodsDAO();
		GoodsVO goods = dao.getGoods(vo);
		
		if(goods!=null) {
			
			request.setAttribute("goods",goods);
			RequestDispatcher view = request.getRequestDispatcher("/goods/getGoods.jsp");
			view.forward(request,response);
		}else {
			response.sendRedirect("GetGoodsListCtrl");
		}
	}

}
