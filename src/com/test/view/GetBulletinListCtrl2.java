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

@WebServlet("/GetBulletinListCtrl2")
public class GetBulletinListCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;   
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int bidx = Integer.parseInt(request.getParameter("bidx"));
			
			BulletinVO vo = new BulletinVO();
			vo.setBidx(bidx);
			
			BulletinDAO dao = new BulletinDAO();
			BulletinVO bulletin = dao.getBulletin(vo);
			if(bulletin != null) {
	      request.setAttribute("bulletin", bulletin);
	      RequestDispatcher view = request.getRequestDispatcher("/Bulletin/GetBulletinList2.jsp");
	      view.forward(request, response);
			} else {
				response.sendRedirect("GetBulletinListCtrl2");
			}
		}
	}