package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.InformDAO;
import com.shop.model.InformVO;


@WebServlet("/GetInformListCtrl")
public class GetInformListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		InformDAO dao = new InformDAO();
		ArrayList<InformVO> informList = dao.getInformList();
		request.setAttribute("informList",informList);
		RequestDispatcher view =request.getRequestDispatcher("/inform/getInformList.jsp");
		view.forward(request, response);
	}

}
