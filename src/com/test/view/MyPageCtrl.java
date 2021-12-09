package com.test.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.biz.HoewonDAO2;
import com.test.model.HoewonVO;

@WebServlet("/MyPageCtrl")
public class MyPageCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String hid = request.getParameter("hid");
		
		HoewonVO vo = new HoewonVO();
		vo.setHid(hid);
		
		HoewonDAO2 dao = new HoewonDAO2();
		//받을객체 = DAO객체명.메서드명(vo)
		HoewonVO hoewon = new HoewonVO();
		hoewon = dao.myPage(vo);
		if(hoewon.getHid() == null) {
			response.sendRedirect("login.jsp");
		} else {
			request.setAttribute("hoewon", hoewon);
			RequestDispatcher view = request.getRequestDispatcher("mypage.jsp");
			view.forward(request, response);
		}
	}
}