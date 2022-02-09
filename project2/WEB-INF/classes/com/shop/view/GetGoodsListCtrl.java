package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.GoodsDAO;
import com.shop.biz.InformDAO;
import com.shop.model.GoodsVO;
import com.shop.model.InformVO;


@WebServlet("/GetGoodsListCtrl")
public class GetGoodsListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		GoodsDAO dao = new GoodsDAO();
		ArrayList<GoodsVO> goodsList = dao.getGoodsList();
		request.setAttribute("goodsList",goodsList);
		RequestDispatcher view =request.getRequestDispatcher("/goods/getGoodsList.jsp");
		view.forward(request, response);
	}

}
