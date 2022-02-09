package com.company.view;

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
			Class.forName("oracle.jdbc.OracleDriver");		//드라이버 로딩
			con = DriverManager.getConnection(url, db_id, db_pw); //연결
			sql = "select * from notice order by rdate desc";		//notice 테이블 검색구문 //sql = "select * from notice2 order by par_idx";
			stmt = con.prepareStatement(sql); 	//상태(200)연결자에 sql명령 저장
			rs = stmt.executeQuery();//실제 SQL명령을 실행하여 결과를 반환
			ArrayList<NoticeVO> notiList = new ArrayList<NoticeVO>();	//검색결과를 저장한 리스트 객체를 생성
			while(rs.next()) {		
				//한 튜플(레코드)씩 컬럼을 분류하여 개별변수에 저장
				int n_idx = rs.getInt("idx"); 
				String n_id = rs.getString("n_id"); 
				String n_title = rs.getString("tit");
				String n_content = rs.getString("con"); 
				String n_author = rs.getString("aut"); 
				Date n_resdate = rs.getDate("rdate"); 
				int n_visited =rs.getInt("visited"); 
				
				 //개별 변수에 저장된 분류된 데이터를 VO 객체에 전달한 후 리스트 객체에 저장
				NoticeVO noti = new NoticeVO();
				noti.setIdx(n_idx);
				noti.setN_id(n_id);
				noti.setTit(n_title);
				noti.setCon(n_content);
				noti.setAut(n_author);
				noti.setRdate(n_resdate);
				noti.setVisited(n_visited);
				notiList.add(noti);
			}
			request.setAttribute("notiList", notiList);//보내질 List 데이터를 지정
			RequestDispatcher view = request.getRequestDispatcher("getNoticeList.jsp"); //보내질 곳을 지정
			view.forward(request, response);			// 지정한 곳으로 데이터 보냄
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}
	}
}