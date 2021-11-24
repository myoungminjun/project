<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- sql 패키지 임포트 -->
<%@ page import="java.sql.*" %>
<%
	//캐릭터셋을 UTF-8로 설정(request, response)
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	//login.html 에서 보내온 데이터 가져와서 임의 변수에 저장
	String m_id = request.getParameter("m_id"); 
	String m_pw = request.getParameter("m_pw");
	
	//연결자, 상태정보자, 결과물저장 객체 선언 및 null 초기화
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	//접속정보를 선언 및 값 지정
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String id="scott";
	String pw="tiger";
	String sql;
	try {
		//드라이버로딩
		Class.forName("oracle.jdbc.OracleDriver");
		//접속
		con = DriverManager.getConnection(url, id, pw);
		//sql문 작성
		sql = "select * from mem where m_id=? and m_pw=?";
		//상태정보 활성화 및 SQL문 처리
		stmt = con.prepareStatement(sql);
		stmt.setString(1, m_id);
		stmt.setString(2, m_pw);
		
		//SQL을 처리하여 결과반환
		rs = stmt.executeQuery();
		
		//반환결과를 출력 => 
		//로그인시에는 해당 사람의 id가 존재하면, 로그인 처리, 존재하지 않으면 회원가입 페이지로 이동
		if(rs.next()){
			session.setAttribute("id", rs.getString("m_id"));
			session.setAttribute("pw", rs.getString("m_pw"));
			session.setAttribute("name", rs.getString("m_name"));
			m_id = rs.getString("m_id");
			m_pw = rs.getString("m_pw");
			if(m_id.equals("admin") && m_pw.equals("1234")){
				response.sendRedirect("admin.jsp");
			} else {
			response.sendRedirect("home.jsp");
		} 
		} else {
		 response.sendRedirect("login.html");
		}	
		//결과물 저장 객체, 상태정보자 객체, 접속 객체 닫기
		rs.close();
		stmt.close();
		con.close();
	} catch(Exception e) {
		response.sendRedirect("e500.html");
		//out.print("시스템 오류 입니다.");
	}
%>