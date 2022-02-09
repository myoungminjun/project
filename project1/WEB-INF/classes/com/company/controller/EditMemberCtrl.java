package com.company.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EditMemberCtrl")
public class EditMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		String uname = request.getParameter("uname");
		int ubirth = Integer.parseInt(request.getParameter("ubirth"));
		String uregdate = request.getParameter("uregdate");
		int upoint = Integer.parseInt(request.getParameter("upoint"));
		String uyesno = request.getParameter("uyesno");
		
		Connection con = null;
	    PreparedStatement stmt = null;
	    ResultSet rs = null;
	    String url = "jdbc:oracle:thin:@localhost:1521:xe";
	    String db_id = "scott";
	    String db_pw = "tiger";
	    String sql;
	    
	    try {
	    	 Class.forName("oracle.jdbc.OracleDriver");
	         con = DriverManager.getConnection(url, db_id, db_pw);
	         sql = "update member set birth=?,name=?,point=? where userid=?";
	         stmt = con.prepareStatement(sql);
				stmt.setInt(1, ubirth);
				stmt.setString(2, uname);
				stmt.setInt(3, upoint);
				stmt.setString(4, uid);
				int cnt = stmt.executeUpdate();
				if(cnt == 0) { 
					response.sendRedirect("EditMemberFormCtrl");
				} else {
					response.sendRedirect("GetMemberListCtrl");
				}
			} catch(Exception e) {
				response.sendRedirect("e404.jsp");
				e.printStackTrace();
			}
		}
	}