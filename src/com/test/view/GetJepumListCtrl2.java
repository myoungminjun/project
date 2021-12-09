package com.test.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.JepumDAO;
import com.test.model.JepumVO;


@WebServlet("/GetJepumListCtrl2")
public class GetJepumListCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		
		JepumDAO dao = new JepumDAO();
      ArrayList<JepumVO> JepumList = dao.getJepumList();
      
      request.setAttribute("JepumList", JepumList);
      RequestDispatcher view = request.getRequestDispatcher("/Jepum/GetJepumList2.jsp");
      view.forward(request, response);
		}
	}

