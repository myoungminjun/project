package com.company.biz;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.model.NoticeVO;

@WebServlet("/EditNoticeFormCtrl")
public class EditNoticeFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String  n_id = request.getParameter("nid");
		
		//연결자/상태코드/DB 접속 정보/sql 변수 선언
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			//드라이버로딩/연결/상태정보로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from notice where n_id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, n_id);
			rs = stmt.executeQuery();
			NoticeVO noti = new NoticeVO();
			if(rs.next()) { 
				noti.setN_id(rs.getString("n_id"));
				noti.setTit(rs.getString("tit"));
				noti.setCon(rs.getString("con"));
				noti.setAut(rs.getString("aut"));
				noti.setRdate(rs.getDate("rdate"));
				noti.setVisited(rs.getInt("visited"));
			} else {
				response.sendRedirect("GetNoticeListCtrl");
			}
			request.setAttribute("noti", noti);
			RequestDispatcher view = request.getRequestDispatcher("EditNoticeForm.jsp");
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