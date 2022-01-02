package com.test.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.HoewonDAO;
import com.test.model.HoewonVO;


@WebServlet("/GetHoewonListCtrl")
public class GetHoewonListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			
			
			HoewonDAO dao = new HoewonDAO();
	      ArrayList<HoewonVO> HoewonList = dao.getHoewonList();
	      
	      request.setAttribute("HoewonList", HoewonList);
	      RequestDispatcher view = request.getRequestDispatcher("/Hoewon/GetHoewonList.jsp");
	      view.forward(request, response);
	   }
	}


