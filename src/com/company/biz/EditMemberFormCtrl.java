package com.company.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.model.MemVO;

@WebServlet("/EditMemberFormCtrl")
public class EditMemberFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		//컨넥터/상태코드/DB 관련 변수에 대한 선언
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			//드라이버로딩~sql 실행
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from mem where m_rid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, uid);
			rs = stmt.executeQuery();
			MemVO mem = new MemVO();
						
			if(rs.next()) {
				mem.setM_id(rs.getString("m_id"));
				mem.setM_pw(rs.getString("m_pw"));
				mem.setM_name(rs.getString("m_name"));
				mem.setM_email(rs.getString("m_email"));
				mem.setM_tel(rs.getString("m_tel"));
				mem.setM_zip(rs.getString("m_zip"));
				mem.setM_addr1(rs.getString("m_addr1"));
				mem.setM_addr2(rs.getString("m_addr2"));
				
			} else {
				response.sendRedirect("GetMemberListCtrl");
			}
			request.setAttribute("mem", mem);
			RequestDispatcher view = request.getRequestDispatcher("EditMemberForm.jsp");
			view.forward(request, response);
			rs.close();
			stmt.close();
			con.close();
		} catch(Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
	}
}