package com.test.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.JepumDAO;
import com.test.model.JepumVO;


@WebServlet("/AddJepumCtrl")
public class AddJepumCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String jcode = request.getParameter("jcode");
		String jname = request.getParameter("jname");
		int jprice = Integer.parseInt(request.getParameter("jprice"));
		int jcnt = Integer.parseInt(request.getParameter("jcnt"));
		String jimg = request.getParameter("jimg");
		

		
		JepumVO vo = new JepumVO();
		vo.setJcode(jcode);
		vo.setJname(jname);
		vo.setJprice(jprice);
		vo.setJcnt(jcnt);
		vo.setJimg(jimg);
		
		JepumDAO dao = new JepumDAO();
		int cnt = dao.AddJepum(vo);
		if(cnt>0) {
			response.sendRedirect("GetJepumListCtrl");
		} else{
			response.sendRedirect("/Jepum/AddJepum.jsp");
	}

  }
}

