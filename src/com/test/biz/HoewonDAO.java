package com.test.biz;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.test.model.DBConn;
import com.test.model.HoewonVO;

public class HoewonDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	public ArrayList<HoewonVO> getHoewonList(){
		ArrayList<HoewonVO> HoewonList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from Hoewon order by rdate desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			HoewonList = new ArrayList<HoewonVO>();
			while(rs.next()) {
				String hid = rs.getString("hid");
				String hpw = rs.getString("hpw");
				String hname = rs.getString("hname");
				String htel = rs.getString("htel");
				String hemail = rs.getString("hemail");
				Date rdate = rs.getDate("rdate");
				
				
				HoewonVO hoewon = new HoewonVO();
				
				hoewon.setHid(hid);
				hoewon.setHpw(hpw);
				hoewon.setHname(hname);
				hoewon.setHtel(htel);
				hoewon.setHemail(hemail);
				hoewon.setRdate(rdate);
				
				
				HoewonList.add(hoewon);
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 되지 않았습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("SQL 구문 또는 열이름,변수명 등이 서로 맞지 않습니다.");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(rs, stmt, con);
		}
		return HoewonList;
}
	public HoewonVO getHoewon(HoewonVO vo) {
		HoewonVO hoewon = null;
		try {
			con = DBConn.getConnection();
			
				String sql = "select * from hoewon where hid = ?";
				stmt = con.prepareStatement(sql);
				stmt.setString(1, vo.getHid());
				rs = stmt.executeQuery();
				if(rs.next()) {
					hoewon = new HoewonVO();
					hoewon.setHid(rs.getString("hid"));
					hoewon.setHpw(rs.getString("hpw"));
					hoewon.setHname(rs.getString("hname"));
					hoewon.setHemail(rs.getString("hemail"));
					hoewon.setHtel(rs.getString("htel"));
					hoewon.setRdate(rs.getDate("rdate"));
				}
				
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return hoewon;
	}
	public int updatehoewon(HoewonVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update hoewon set hpw=?, hname=?, hemail=?, htel=?  where hid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getHpw());
			stmt.setString(2, vo.getHname());
			stmt.setString(3, vo.getHemail());
			stmt.setString(4, vo.getHtel());
			stmt.setString(5, vo.getHid());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteHoewon(HoewonVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete  from hoewon where hid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getHid());
			cnt = stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	
	public int addhoewon(HoewonVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into hoewon values (?, ?, ?, ?, ?)";
			//insert into hoewon values ('kkt09072', '4321', '김기태', 'kkt09072@naver.com', '010-1234-1234');
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getHid());
			stmt.setString(2, vo.getHpw());
			stmt.setString(3, vo.getHname());
			stmt.setString(4, vo.getHemail());
			stmt.setString(5, vo.getHtel());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
}

