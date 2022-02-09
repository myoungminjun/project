package com.company.controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddProductCtrl")
public class AddProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String ppronum = request.getParameter("pronum");
		String pproname = request.getParameter("proname");
		int pproprice = Integer.parseInt(request.getParameter("proprice"));
		int pprocnt = Integer.parseInt(request.getParameter("procnt"));
		String pproimg = request.getParameter("proimg");
		
		Connection con = null;
		PreparedStatement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
			try {
			//드라이버 로딩/연결/상태코드 연결/SQL문 실행
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "insert into product values (?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, ppronum);
			stmt.setString(2, pproname);
			stmt.setInt(3, pproprice);
			stmt.setInt(4, pprocnt);
			stmt.setString(5, pproimg);
			int cnt = stmt.executeUpdate();
			if(cnt!=0) {
				response.sendRedirect("GetProductListCtrl");
			} else {
				response.sendRedirect("addProductForm.jsp");
			}
			//구성요소 닫기
			stmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}