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

@WebServlet("/GetNoticeListCtrl2")
public class GetNoticeListCtrl2 extends HttpServlet {
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
         while(rs.next()) {
        	 int n_idx = rs.getInt("idx"); 
				String n_id = rs.getString("n_id"); 
				String n_title = rs.getString("tit");
				String n_content = rs.getString("con"); 
				String n_author = rs.getString("aut"); 
				Date n_resdate = rs.getDate("rdate"); 
				int n_visited =rs.getInt("visited");
            
				NoticeVO noti = new NoticeVO();
				noti.setIdx(n_idx);
				noti.setN_id(n_id);
				noti.setTit(n_title);
				noti.setCon(n_content);
				noti.setAut(n_author);
				noti.setRdate(n_resdate);
				noti.setVisited(n_visited);
				noticeList.add(noti);
         }
         request.setAttribute("noticeList", noticeList);   
         RequestDispatcher view = request.getRequestDispatcher("getNoticeList2.jsp");
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