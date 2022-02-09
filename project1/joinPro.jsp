<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
<%
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="scott";
		String pw="tiger";
		String sql;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("uid");
		String passwd = request.getParameter("upw");
		int birth = Integer.parseInt(request.getParameter("ubirth"));
		String name = request.getParameter("uname");
		int zipcode = Integer.parseInt(request.getParameter("uzipcode"));
		String address1 = request.getParameter("uaddress1");
		String address2 = request.getParameter("uaddress2");
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			sql = "insert into member(userid, passwd, birth, regdate, name, zipcode, address1, address2) values (?, ?, ?, sysdate, ?, ?, ?, ?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, userid);
			stmt.setString(2, passwd);
			stmt.setInt(3, birth);
			stmt.setString(4, name);
			stmt.setInt(5, zipcode);
			stmt.setString(6, address1);
			stmt.setString(7, address2);
			
			int n = stmt.executeUpdate();
			if(n>=1) {
				//회원가입 성공시 이동
				response.sendRedirect("login.html");
			} else {
				//회원가입 실패시 이동
				response.sendRedirect("join.jsp");
			}
			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결이 실패되었거나 SQL을 처리하지 못했습니다.");
			e.printStackTrace();
		}
%>