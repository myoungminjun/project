package com.company.biz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EditMemberCtrl")
public class EditMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String u_id = request.getParameter("m_id");
        String u_pw = request.getParameter("m_pw");
        String u_name = request.getParameter("m_name");
        String u_email = request.getParameter("m_email");
        String u_tel = request.getParameter("m_tel");
        String u_zip = request.getParameter("m_zip");
        String u_addr1 = request.getParameter("m_addr1");
        String u_addr2 = request.getParameter("m_addr2");
        String u_date = request.getParameter("m_date");
		
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
	         sql = "update mem set m_name where m_id=?";
	         stmt = con.prepareStatement(sql);
				stmt.setString(2, u_name);
			
				int cnt = stmt.executeUpdate();
				if(cnt == 0) { 
					response.sendRedirect("EditMemberFormCtrl");
				} else {
					response.sendRedirect("GetMemberListCtrl");
				}
			} catch(Exception e) {
				response.sendRedirect("e404.jsp");
				e.printStackTrace();
			}
		}
	}