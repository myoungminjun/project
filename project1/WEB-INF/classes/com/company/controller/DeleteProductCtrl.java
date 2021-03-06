package com.company.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProductCtrl")
public class DeleteProductCtrl extends HttpServlet {
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
	      int cnt=0;
	      try {
	         Class.forName("oracle.jdbc.OracleDriver");
	         con = DriverManager.getConnection(url, db_id, db_pw);
	         
	         for(int i=0;i<ck.length;i++) {
	            sql = "delete from product where pronum=?";
	            stmt = con.prepareStatement(sql);
	            stmt.setString(1, ck[i]);
	            cnt++;
	            stmt.executeUpdate();
	         }
	         if(cnt!=0) {
	            response.sendRedirect("GetProductListCtrl");
	         }else {
	            out.println("삭제된 데이터가 없습니다.");
	            try {
	               Thread.sleep(1000);
	               response.sendRedirect("GetProductListCtrl");
	            }catch(Exception e) {
	               System.out.println("루틴이 제대로 처리 되지 못했습니다.");
	               response.sendRedirect("GetProductListCtrl");
	            }
	         }
	         stmt.close();
	         con.close();
	      }catch(Exception e) {
	         
	      }
	   }
	}


