package com.company.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditProductCtrl")
public class EditProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String pronum = request.getParameter("pronum");
		String proname = request.getParameter("proname");
		int proprice = Integer.parseInt(request.getParameter("proprice"));
		int procnt = Integer.parseInt(request.getParameter("procnt"));
		String proimg = request.getParameter("proimg");
		
		//연결자/상태코드/DB 접속 정보/sql 변수 선언
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			//드라이버로딩/연결/상태정보로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "update product set proname=?, proprice=?, procnt=?, proimg=? where pronum=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, proname);
			stmt.setInt(2, proprice);
			stmt.setInt(3, procnt);
			stmt.setString(4, proimg);
			stmt.setString(5, pronum);
			int cnt = stmt.executeUpdate();
			if(cnt == 0) { 
				response.sendRedirect("EditProductFormCtrl");
			} else {
				response.sendRedirect("GetProductListCtrl");
			}
		} catch(Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
	}
}