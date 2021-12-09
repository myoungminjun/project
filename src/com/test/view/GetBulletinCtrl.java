package com.test.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.BulletinDAO;
import com.test.model.BulletinVO;


@WebServlet("/GetBulletinCtrl")
public class GetBulletinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int bidx = Integer.parseInt(request.getParameter("bidx"));
		
		BulletinVO vo = new BulletinVO();
		vo.setBidx(bidx);
		
		BulletinDAO dao = new BulletinDAO();
		BulletinVO bulletinList = dao.getBulletin(vo);
		
		if(bulletinList != null) {
			request.setAttribute("bulletinList", bulletinList);//inform이라는 데이터를 "inform"이라는 이름으로 보내라
			RequestDispatcher view = request.getRequestDispatcher("/Bulletin/GetBulletin.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetBulletinListCtrl");
		}
	}

}

