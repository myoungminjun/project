package com.test.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.BulletinDAO;
import com.test.model.BulletinVO;


@WebServlet("/AddBulletinCtrl")
public class AddBulletinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String bname = request.getParameter("bname");
		String btit = request.getParameter("btit");
		String bcon = request.getParameter("bcon");

		
		BulletinVO vo = new BulletinVO();
		vo.setBname(bname);
		vo.setBtit(btit);
		vo.setBcon(bcon);

		
		BulletinDAO dao = new BulletinDAO();
		int cnt = dao.AddBulletin(vo);
		if(cnt>0) {
			response.sendRedirect("GetBulletinListCtrl");
		} else{
			response.sendRedirect("/Bulletin/AddBulletin.jsp");
	}

  }
}


