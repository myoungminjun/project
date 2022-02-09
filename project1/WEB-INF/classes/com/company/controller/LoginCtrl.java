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
import javax.servlet.http.HttpSession;


@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String db_id = "scott";
		String db_pw = "tiger";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String sql;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from member where userid=? and passwd=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, uid);
			stmt.setString(2, upw);
			rs= stmt.executeQuery();
			
			if(rs.next()) {
					String sname = rs.getString("name");
					String sid = rs.getString("userid");
					HttpSession session = request.getSession();// 서블릿은 세션을 자동으로 가져오지 못해서 이렇게 처리함
					session.setAttribute("id", sid);
					session.setAttribute("name", sname);
					
					//session.invalidate(); -> 세션 값 모두 버리기
					response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("login.jsp");
			}
			rs.close();
			stmt.close();
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("e404.jsp");
		}
	}

}
