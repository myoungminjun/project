package com.shop.biz;

import java.sql.*;
import com.shop.model.CustomVO;
import com.shop.model.DBConn;



public class CustomDAO2 {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	public CustomVO getCustom(CustomVO vo) {
		CustomVO custom = null;
		try {
			con = DBConn.getConnection();
			String	sql = "select * from custom where cusid = ? and cuspw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCusid());
			stmt.setString(2, vo.getCuspw());
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
	
	public CustomVO myPage(CustomVO vo) {
		CustomVO custom = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from custom where cusid = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCusid());
			rs = stmt.executeQuery();
			if(rs.next()) {				
				custom = new CustomVO();
				custom.setCusid(rs.getString("cusid"));
				custom.setCuspw(rs.getString("cuspw"));
				custom.setCusname(rs.getString("cusname"));
				custom.setCustel(rs.getString("custel"));
				custom.setCuszipcode(rs.getInt("cuszipcode"));
				custom.setAdd1(rs.getString("add1"));
				custom.setAdd2(rs.getString("add2"));
			}
		} catch(ClassNotFoundException e){
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

		public int dupCheck(CustomVO vo) {
			int cnt = 0;
			try {
				con = DBConn.getConnection();
				String sql = "select * from custom where cusid = ?";
				System.out.println("입력한 아이디 : "+vo.getCusid());
				stmt = con.prepareStatement(sql);
				stmt.setString(1, vo.getCusid());
				rs = stmt.executeQuery();
				if(rs.next()) {
					cnt = 1;		//사용이 불가능한 아이디
				} else {
					cnt = 0;		//사용이 가능한 아이디
				}
			} catch(Exception e) {
				System.out.println("데이터를 비교하지 못했습니다.");
				e.printStackTrace();
			}
			return cnt;
		}
	}