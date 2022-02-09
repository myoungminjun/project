package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.biz.PayDAO;
import com.shop.model.PayVO;


@WebServlet("/AddPayCtrl")
public class AddPayCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String userid = request.getParameter("userid");
		String gcode = request.getParameter("gcode");
		String num = request.getParameter("gcnt");
		String money = request.getParameter("money");
		int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String contact = request.getParameter("contact");
		int paytype = Integer.parseInt(request.getParameter("paytype"));
		int creditnum = Integer.parseInt(request.getParameter("creditnum"));
		
		
		PayVO vo = new PayVO ();
		vo.setUserid(userid);
		vo.setGcode(gcode);
		vo.setCnt(Integer.parseInt(num));
		vo.setZipcode(zipcode);
		vo.setAdd1(add1);
		vo.setAdd2(add2);
		vo.setContact(contact);
		vo.setPaytype(paytype);
		vo.setCreditnum(creditnum);
		
		PayDAO dao = new PayDAO();
		int cnt = dao.addPay(vo);
		
		if(cnt != 0) {
			response.sendRedirect("GetGoodsListCtrl2");
		} else {
			response.sendRedirect("GetGoodsCtrl2?gcode="+gcode);
		} 
	}
}
