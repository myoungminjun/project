package com.test.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import com.test.model.HoewonVO;
import com.test.model.DBConn;

public class HoewonDAO2 {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	public HoewonVO gethoewon(HoewonVO vo) {
		HoewonVO hoewon = null;
		try {
			con = DBConn.getConnection();
			String	sql = "select * from hoewon where hid = ? and hpw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getHid());
			stmt.setString(2, vo.getHpw());
			rs = stmt.executeQuery();
			hoewon = new HoewonVO();
			if(rs.next()) {				
				hoewon.setHid(rs.getString("hid"));
				hoewon.setHpw(rs.getString("hpw"));
				hoewon.setHname(rs.getString("hname"));
				hoewon.setHtel(rs.getString("htel"));
				hoewon.setHemail(rs.getString("hemail"));
				hoewon.setRdate(rs.getDate("rdate"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return hoewon;
	}
	
	public HoewonVO myPage(HoewonVO vo) {
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
	
	public int updateHoewon(HoewonVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update hoewon set hpw=?, hname=?, hemail=?, htel=? where hid=?";
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
		int cnt=0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from hoewon where hid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getHid());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int addHoewon(HoewonVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into hoewon values (?, ?, ?, ?, ?,sysdate)";
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
	public int dupCheck(HoewonVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "select * from hoewon where hid = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getHid());
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