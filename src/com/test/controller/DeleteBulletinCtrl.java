package com.test.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.BulletinDAO;
import com.test.model.BulletinVO;


@WebServlet("/DeleteBulletinCtrl")
public class DeleteBulletinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int bidx = Integer.parseInt(request.getParameter("bidx"));
		int cnt = 0;
		BulletinVO vo = new BulletinVO();
		vo.setBidx(bidx);
		
		
		BulletinDAO dao = new BulletinDAO();
		cnt = dao.deleteBulletin(vo);
		if(cnt>0)response.sendRedirect("GetBulletinListCtrl");
	}

}