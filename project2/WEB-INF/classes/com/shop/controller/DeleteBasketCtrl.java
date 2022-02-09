package com.shop.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.BasketDAO;
import com.shop.model.BasketVO;


@WebServlet("/DeleteBasketdCtrl")
public class DeleteBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        
		int gcode = Integer.parseInt(request.getParameter("gcode"));
		String cusid = request.getParameter("cusid");

		BasketVO vo = new BasketVO();
		vo.setGcode(gcode);
		vo.setCusid(cusid);
        
        BasketDAO dao = new BasketDAO();
        int cnt = dao.deleteBasket(vo);
        
        if(cnt>0) {
			response.sendRedirect("GetBasketListCtrl?cusid="+cusid+"&gcode="+gcode);			
		}else {
			response.sendRedirect("GetBasketListCtrl?cusid="+cusid);
		}
	}

}
