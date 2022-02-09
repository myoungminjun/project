package com.shop.biz;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import com.shop.model.DBConn;
import com.shop.model.InformVO;

//Inform테이블에 접근하여 데이터 처리요청되어 온 일을 모두 한 곳에서 처리하기 위한 모듈 =>배치 프로그래밍
public class InformDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	//공지사항 리스트를 데이터베이스에 접근하여 가져와서 VO에 담은 후 controller에 리턴해주는 역할의 메서드
	public ArrayList<InformVO> getInformList(){
		ArrayList<InformVO> informList = null;
		try {
			con = DBConn.getConnection();
			String sql="select*from inform order by idx desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			informList = new ArrayList<InformVO>();
			while(rs.next()) {
				//데이터베이스 테이블에서 반환된 결과를 각 컬럼별로 지역변수에 담기 
				int idx = rs.getInt("idx");
				String inname = rs.getString("inname");
				String intit = rs.getString("intit");
				String incon = rs.getString("incon");
				Date rdate = rs.getDate("rdate");
				int visited = rs.getInt("visited");
				//각 지역변수에 담긴 필드값을 VO에 던져주기
				InformVO inform = new InformVO();
				inform.setIdx(idx);
				inform.setInname(inname);
				inform.setIntit(intit);
				inform.setIncon(incon);
				inform.setRdate(rdate);
				inform.setVisited(visited);
				//VO에 담긴 데이터를 리스트에 담기
				informList.add(inform);
			}
	}catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩이 되지 않습니다");
		e.printStackTrace();
	}catch(SQLException e){
		System.out.println("SQL구문 또는 열 이름,변수명 등이 서로 맞지 않습니다.");
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}finally {
		DBConn.close(rs, stmt, con);
	}
		//VO의 값을 리스트에 담은 결과를 반환
		return informList;
	}
	
	public InformVO getInform(InformVO vo) {
		//idx를 받아오기(자바객체기 때문에 매개변수만 받기)
		InformVO inform = null;
		try {
			con = DBConn.getConnection();
			String sql = "update inform set visited=visited+1 where idx=?";
			stmt= con.prepareStatement(sql);
			stmt.setInt(1,vo.getIdx());
			int cnt = stmt.executeUpdate();
			stmt.close();
			
			if(cnt>0) {
				sql = "select * from inform where idx=?";
				stmt= con.prepareStatement(sql);
				stmt.setInt(1,vo.getIdx());
				rs = stmt.executeQuery();
				if(rs.next()) {
					inform = new InformVO();
					inform.setIdx(rs.getInt("idx"));
					inform.setInname(rs.getString("inname"));
					inform.setIntit(rs.getString("intit"));
					inform.setIncon(rs.getString("incon"));
					inform.setRdate(rs.getDate("rdate"));
					inform.setVisited(rs.getInt("visited"));
				}
			}
		}catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩이 되지 않습니다");
			e.printStackTrace();
		}catch(SQLException e){
			System.out.println("SQL구문 또는 열 이름,변수명 등이 서로 맞지 않습니다.");
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			DBConn.close(rs, stmt, con);
		}
			//VO의 값을 리스트에 담은 결과를 반환
			return inform;
	}
		public int updateInform(InformVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update inform set intit=?,incon=? where idx=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,vo.getIntit());
			stmt.setString(2,vo.getIncon());
			stmt.setInt(3,vo.getIdx());
			cnt = stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}return cnt;
	}
		public int deleteInform(InformVO vo) {
			int cnt=0;
			try {
				con = DBConn.getConnection();
				String sql ="delete from inform where idx=?";
				stmt =  con.prepareStatement(sql);
				stmt.setInt(1,vo.getIdx());
				cnt = stmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConn.close(stmt, con);
			}return cnt;
	}
		public int addInform(InformVO vo) {
			int cnt =0;
			try {
				con = DBConn.getConnection();
				String sql="insert into inform values(inform_idx.NEXTVAL,?,?,?,sysdate,0)";
				stmt = con.prepareStatement(sql);
				stmt.setString(1,vo.getInname());
				stmt.setString(2,vo.getIntit());
				stmt.setString(3,vo.getIncon());								
				cnt = stmt.executeUpdate();	
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConn.close(stmt, con);
			}return cnt;
		}
 }

