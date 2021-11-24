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

import com.company.model.MemVO;

@WebServlet("/GetMemberListCtrl")
public class GetMemberListCtrl extends HttpServlet {
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
         sql = "select * from mem";
         stmt = con.prepareStatement(sql);
         rs = stmt.executeQuery();
         ArrayList<MemVO> memberList = new ArrayList<MemVO>();   
         //select로 검색한 데이터를 저장한 공간 마련
         while(rs.next()) {
            String u_id = rs.getString("m_id");
            String u_pw = rs.getString("m_pw");
            String u_name = rs.getString("m_name");
            String u_email = rs.getString("m_email");
            String u_tel = rs.getString("m_tel");
            String u_zip = rs.getString("m_zip");
            String u_addr1 = rs.getString("m_addr1");
            String u_addr2 = rs.getString("m_addr2");
            Date u_date = rs.getDate("regdate");
            MemVO mem = new MemVO();   // 한 회원의 컬럼 데이터를 VO에 담는다.
            mem.setM_id(u_id);
            mem.setM_pw(u_pw);
            mem.setM_name(u_name);
            mem.setM_email(u_email);
            mem.setM_tel(u_tel);
            mem.setM_zip(u_zip);
            mem.setM_addr1(u_addr1);
            mem.setM_addr2(u_addr2);
            mem.setRegdate(u_date);
            //mem.setYesno(rs.getString("yesno"));
            memberList.add(mem);   //VO에 담긴 여러 건의 데이터들를 List에 담는다. 
         }
         request.setAttribute("memberList", memberList);      //보내질 List 데이터를 지정
         RequestDispatcher view = request.getRequestDispatcher("getMemberList.jsp");  //보내질 곳 지정 
         view.forward(request, response);   //지정한 URL로 데이터를 송신
         rs.close();
         stmt.close();
         con.close();
      } catch(Exception e) {
         response.sendRedirect("e404.jsp");
         e.printStackTrace();
      }
   }
}