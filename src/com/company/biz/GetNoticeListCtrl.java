package com.company.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.model.NoticeVO;


@WebServlet("/GetNoticeListCtrl")
public class GetNoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			sql = "select * from notice order by rdate desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			ArrayList<NoticeVO> noticeList = new ArrayList<NoticeVO>();
			while(rs.next()){
				int n_idx = rs.getInt("idx");
				String n_id = rs.getString("n_id");
				String n_title = rs.getString("tit");
				String n_content = rs.getString("con"); 
				String n_author = rs.getString("aut");
				Date n_resdate = rs.getDate("rdate");
				int n_visited = rs.getInt("visited");
				
				NoticeVO notice = new NoticeVO();
				notice.setIdx(n_idx);
				notice.setN_id(n_id);
				notice.setTit(n_title);
				notice.setCon(n_content);
				notice.setAut(n_author);
				notice.setRdate(n_resdate);
				notice.setVisited(n_visited);
				noticeList.add(notice);
			}
			request.setAttribute("noticeList", noticeList);
			RequestDispatcher view = request.getRequestDispatcher("getNoticeList.jsp");
			view.forward(request, response);
			
			
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e){
			response.sendRedirect("e404.jsp");
	         e.printStackTrace();
		}
		
	}

}
