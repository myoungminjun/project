package com.test.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.JepumDAO;
import com.test.model.JepumVO;


@WebServlet("/GetJepumCtrl2")
public class GetJepumCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jcode = request.getParameter("jcode");
		
		JepumVO vo = new JepumVO();
		vo.setJcode(jcode);
		
		JepumDAO dao = new JepumDAO();
		JepumVO JepumList = dao.getJepum(vo);
		
		if(JepumList!=null) {
			request.setAttribute("JepumList", JepumList);
			RequestDispatcher view = request.getRequestDispatcher("/Jepum/GetJepum2.jsp");
			view.forward(request, response);
		}else {
			response.sendRedirect("GetJepumListCtrl");
		}
	}

}
