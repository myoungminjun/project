package com.test.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.biz.HoewonDAO;
import com.test.model.HoewonVO;


@WebServlet("/GetHoewonCtrl")
public class GetHoewonCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String hid = request.getParameter("hid");
		
		HoewonVO vo = new HoewonVO();
		vo.setHid(hid);
		
		HoewonDAO dao = new HoewonDAO();
		HoewonVO HoewonList = dao.getHoewon(vo);
		
		if(HoewonList != null) {
			request.setAttribute("HoewonList", HoewonList);//inform이라는 데이터를 "inform"이라는 이름으로 보내라
			RequestDispatcher view = request.getRequestDispatcher("/Hoewon/GetHoewon.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetHoewonListCtrl");
		}
	}

}

