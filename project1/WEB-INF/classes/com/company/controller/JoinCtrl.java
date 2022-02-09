package com.company.controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinCtrl")
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		String userid = request.getParameter("uid");
		String passwd = request.getParameter("upw");
		int birth = Integer.parseInt(request.getParameter("ubirth"));
		String regdate = request.getParameter("regdate");
		String name = request.getParameter("uname");
		int zipcode = Integer.parseInt(request.getParameter("uzipcode"));
		String address1 = request.getParameter("uaddress1");
		String address2 = request.getParameter("uaddress2");
		
		
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
		sql = "insert into member(userid, passwd, birth, regdate, name, zipcode, address1, address2) values (?, ?, ?, sysdate, ?, ?, ?, ?)";
		stmt = con.prepareStatement(sql);
		stmt.setString(1, userid);
		stmt.setString(2, passwd);
		stmt.setInt(3, birth);
		stmt.setString(4, regdate);
		stmt.setString(5, name);
		stmt.setInt(6, zipcode);
		stmt.setString(7, address1);
		stmt.setString(8, address2);
		
		int n = stmt.executeUpdate();
		if(n>=1) {
			//회원가입 성공시 이동
			response.sendRedirect("login.html");
		} else {
			//회원가입 실패시 이동
			response.sendRedirect("join.html");
		}
		stmt.close();
		con.close();
	} catch (ClassNotFoundException e) {
		System.out.println("드라이버 로딩이 실패되었습니다.");
		e.printStackTrace();
	} catch (SQLException e) {
		System.out.println("DB연결이 실패되었거나 SQL을 처리하지 못했습니다.");
		e.printStackTrace();
		}
	}
}