package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.CustomDAO;
import com.shop.model.CustomVO;





@WebServlet("/GetCustomListCtrl")
public class GetCustomListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		CustomDAO dao = new CustomDAO();
		ArrayList<CustomVO> customList = dao.getCustomList();
		request.setAttribute("customList",customList);
		RequestDispatcher view =request.getRequestDispatcher("/custom/getCustomList.jsp");
		view.forward(request, response);
	}

}
