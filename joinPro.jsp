<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
 
<%
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="scott";
		String pw="tiger";
		String sql;
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("userid");
		String upw = request.getParameter("passwd");
		int ubirth = Integer.parseInt(request.getParameter("birth"));
		String urdate = request.getParameter("regdate");
		String uname = request.getParameter("name");
		int uzipcode = Integer.parseInt(request.getParameter("zipcode"));
		String uaddress1 = request.getParameter("address1");
		String uaddress2 = request.getParameter("address2");
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			sql = "insert into member(userid, passwd, birth, regdate, name, zipcode, address1, address2) values (?, ?, ?, sysdate, ?, ?, ?, ?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, uid);
			stmt.setString(2, upw);
			stmt.setInt(3, ubirth);
			stmt.setString(4, urdate);
			stmt.setString(5, uname);
			stmt.setInt(6, uzipcode);
			stmt.setString(7, uaddress1);
			stmt.setString(8, uaddress2);
			
			int n = stmt.executeUpdate();
			if(n>=1) {
				//회원가입 성공시 이동
				response.sendRedirect("login.html");
			} else {
				//회원가입 실패시 이동
				response.sendRedirect("join.html");
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