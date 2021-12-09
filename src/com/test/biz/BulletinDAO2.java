package com.test.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.test.model.DBConn;
import com.test.model.BulletinVO;

public class BulletinDAO2 {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public List<BulletinVO> getList(int startRow, int endRow) {
		List<BulletinVO> list = null;	
		try {
			con = DBConn.getConnection(); 
			String sql = "select * from (select rownum as rn, bix, bname, btit, bcon, rdate, visited from (select * from bulletin order by bidx desc)) where rn between ? and ?";
			stmt = con.prepareStatement(sql); 
			stmt.setInt(1, startRow); 
			stmt.setInt(2, endRow);
			rs = stmt.executeQuery(); 
			if (rs.next()) {
				list = new ArrayList<>(); 
				do {
					BulletinVO bulletin = new BulletinVO();
					bulletin.setBidx(rs.getInt("bidx"));
					bulletin.setBname(rs.getString("bname"));
					bulletin.setBtit(rs.getString("btit"));
					bulletin.setBcon(rs.getString("bcon"));
					bulletin.setRdate(rs.getDate("rdate"));
					
					list.add(bulletin); 
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
	return list; // list 반환
	}
	public int getCount(){
		int count = 0;
		String sql = "select count(*) from bulletin";
		try {
			con = DBConn.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return count; // 총 레코드 수 리턴
	}
}

