package com.shop.biz;

import java.sql.*;
import java.util.ArrayList;

import com.shop.model.CustomVO;
import com.shop.model.DBConn;



public class CustomDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	public ArrayList<CustomVO> getCustomList(){
		ArrayList<CustomVO> customList = null;
		try {
			con = DBConn.getConnection();
			String sql="select * from custom";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			customList = new ArrayList<CustomVO>();
			while(rs.next()) {
				//데이터베이스 테이블에서 반환된 결과를 각 컬럼별로 지역변수에 담기 
				String cusid = rs.getString("cusid");
				String cuspw = rs.getString("cuspw");
				String cusname = rs.getString("cusname");
				String custel = rs.getString("custel");
				int cuszipcode = rs.getInt("cuszipcode");
				String add1 = rs.getString("add1");
				String add2 = rs.getString("add2");
				//각 지역변수에 담긴 필드값을 VO에 던져주기
				CustomVO custom = new CustomVO();
				custom.setCusid(cusid);
				custom.setCuspw(cuspw);
				custom.setCusname(cusname);
				custom.setCustel(custel);
				custom.setCuszipcode(cuszipcode);
				custom.setAdd1(add1);
				custom.setAdd2(add2);
				//VO에 담긴 데이터를 리스트에 담기
				customList.add(custom);
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
		return customList;
	}
	public CustomVO getCustom(CustomVO vo) {
		CustomVO custom = null;
		try {
			con = DBConn.getConnection();
			String	sql = "select * from custom where cusid = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCusid());
			rs = stmt.executeQuery();
			custom = new CustomVO();
			if(rs.next()) {				
				custom.setCusid(rs.getString("cusid"));
				custom.setCuspw(rs.getString("cuspw"));
				custom.setCusname(rs.getString("cusname"));
				custom.setCustel(rs.getString("custel"));
				custom.setCuszipcode(rs.getInt("cuszipcode"));
				custom.setAdd1(rs.getString("add1"));
				custom.setAdd2(rs.getString("add2"));

			}	
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return custom;
	}
	
		public int updateCustom(CustomVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update custom set cuspw=?, cusname=?, custel=?, cuszipcode=?, add1=?, add2=?  where cusid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,vo.getCuspw());
			stmt.setString(2,vo.getCusname());
			stmt.setString(3,vo.getCustel());
			stmt.setInt(4,vo.getCuszipcode());
			stmt.setString(5,vo.getAdd1());
			stmt.setString(6,vo.getAdd2());
			stmt.setString(7,vo.getCusid());
			cnt = stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}return cnt;
	}
		public int deleteCustom(CustomVO vo) {
			int cnt=0;
			try {
				con = DBConn.getConnection();
				String sql ="delete from custom where cusid=?";
				stmt =  con.prepareStatement(sql);
				stmt.setString(1,vo.getCusid());
				cnt = stmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConn.close(stmt, con);
			}return cnt;
	}
		public int addCustom(CustomVO vo) {
			int cnt =0;
			try {
				con = DBConn.getConnection();
				String sql="insert into custom values(?,?,?,?,?,?,?)";
				stmt = con.prepareStatement(sql);
				stmt.setString(1,vo.getCusid());
				stmt.setString(2,vo.getCuspw());
				stmt.setString(3,vo.getCusname());
				stmt.setString(4,vo.getCustel());
				stmt.setInt(5,vo.getCuszipcode());
				stmt.setString(6,vo.getAdd1());
				stmt.setString(7,vo.getAdd2());
							
				cnt = stmt.executeUpdate();	
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConn.close(stmt, con);
			}return cnt;
		}
 }

