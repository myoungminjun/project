package com.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.shop.biz.CustomDAO2;
import com.shop.model.CustomVO;

@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String cusid= request.getParameter("cusid");
		String cuspw= request.getParameter("cuspw");

		
		CustomVO vo = new CustomVO();
		vo.setCusid(cusid);
		vo.setCuspw(cuspw);
		
		CustomVO custom = new CustomVO();
		CustomDAO2 dao = new CustomDAO2();
		custom = dao.getCustom(vo);
		
		HttpSession session = request.getSession();
		
			
	      if(cusid.equals("admin") && cuspw.equals("1234")){
	  		
	    	  session.setAttribute("cusid", custom.getCusid());
		    session.setAttribute("cusname", custom.getCusname());
	         response.sendRedirect("admin.jsp");
	      } else if(cusid!="admin" && cuspw!="1234") {
	  		
	    	session.setAttribute("cusid", custom.getCusid());
		    session.setAttribute("cusname", custom.getCusname());
		    session.setAttribute("custel", custom.getCustel());
	         response.sendRedirect("index.jsp");
	         
	      } else {
	    	  
	         response.sendRedirect("login.jsp");
	      }   

	}

}