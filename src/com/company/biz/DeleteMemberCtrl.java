package com.company.biz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteMemberCtrl")
public class DeleteMemberCtrl extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String[] ck = request.getParameterValues("ck");
      PrintWriter out = response.getWriter();
      Connection con = null;
      PreparedStatement stmt = null;
      ResultSet rs = null;
      String url = "jdbc:oracle:thin:@localhost:1521:xe";
      String db_id="scott";
      String db_pw = "tiger";
      String sql;
      try {
         Class.forName("oracle.jdbc.OracleDriver");
         con = DriverManager.getConnection(url, db_id, db_pw);
         int cnt=0;
         for(int i=0;i<ck.length;i++) {
            sql = "delete from mem where m_id=?";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, ck[i]);
            cnt++;
            stmt.executeUpdate();
         }
         if(cnt!=0) {
            response.sendRedirect("GetMemberListCtrl");
         }else {
            out.println("삭제된 데이터가 없습니다.");
            try {
               Thread.sleep(1000);
               response.sendRedirect("GetMemberListCtrl");
            }catch(Exception e) {
               System.out.println("루틴이 제대로 처리 되지 못했습니다.");
               response.sendRedirect("GetMemberListCtrl");
            }
         }
         stmt.close();
         con.close();
      }catch(Exception e) {
         
      }
   }

}