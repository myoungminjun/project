package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.BasketDAO;
import com.shop.model.BasketVO;




@WebServlet("/AddBasketCtrl")
public class AddBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int gcode = Integer.parseInt(request.getParameter("gcode"));
		String cusid = request.getParameter("cusid");
		String gname = request.getParameter("gname");
		int gprice = Integer.parseInt(request.getParameter("gprice"));
		
		BasketVO vo = new BasketVO ();
		vo.setGcode(gcode);
		vo.setCusid(cusid);
		vo.setGoodsname(gname);
		vo.setSprice(gprice);
		vo.setScnt(1);
		vo.setValidity(1);

		
		BasketDAO dao = new BasketDAO();
		int cnt = dao.addBasket(vo);	
		if(cnt>0) {
			response.sendRedirect("GetBasketListCtrl?cusid="+cusid+"&gcode="+gcode+"&gprice="+gprice);			
		}else {
			response.sendRedirect("GetBasketListCtrl?cusid="+cusid);
		}
	}

}
