package com.test.biz;

import java.sql.*;
import java.util.ArrayList;

import com.test.model.DBConn;

import com.test.model.BulletinVO;

//배치(batch) 프로그래밍 : 한 곳에서 일을 한꺼번에 처리하기 위한 프로그래밍
//Inform 테이블에 접근하여 데이터 처리요청되어 온 일들을 모두 한 곳에서 처리하기 위한 모듈
public class BulletinDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	//공지사항 리스트를 데이터베이스에 접근하여 가져와서 VO에 담은 후 Controller에 리턴해주는 역할의 메서드
	public ArrayList<BulletinVO> getBulletinList(){
		ArrayList<BulletinVO> BulletinList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from bulletin order by bidx desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			BulletinList = new ArrayList<BulletinVO>();
			while(rs.next()) {
				int bidx = rs.getInt("bidx");
				String bname = rs.getString("bname");
				String btit = rs.getString("btit");
				String bcon = rs.getString("bcon");
				Date rdate = rs.getDate("rdate");
				int visited = rs.getInt("visited");
				
				BulletinVO bullet = new BulletinVO();
				
				bullet.setBidx(bidx);
				bullet.setBname(bname);
				bullet.setBtit(btit);
				bullet.setBcon(bcon);
				bullet.setRdate(rdate);
				bullet.setVisited(visited);
				
				BulletinList.add(bullet);
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
		return BulletinList;
	}
	public int AddBulletin(BulletinVO vo) {
		int cnt = 0;
			try {
				con = DBConn.getConnection();
				String sql = "insert into Bulletin values (Bulletin_bidx.NEXTVAL,?,?,?,sysdate,0)";
				stmt = con.prepareStatement(sql);
				stmt.setString(1, vo.getBname());
				stmt.setString(2, vo.getBtit());
				stmt.setString(3, vo.getBcon());
				cnt = stmt.executeUpdate();
			
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConn.close(stmt, con);
			}
		return cnt;
	}
	public BulletinVO getBulletin(BulletinVO vo) {
		BulletinVO bulletin = null;
		try {
			//읽기전에 조회수 추가
			con = DBConn.getConnection();
			String sql = "update bulletin set visited=visited+1 where bidx = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getBidx());
			int cnt = stmt.executeUpdate();
			stmt.close();
			
			if(cnt>0) {
			//읽기
			sql = "select * from bulletin where bidx = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getBidx());
			rs = stmt.executeQuery();
			if(rs.next()) {
				bulletin = new BulletinVO();
				bulletin.setBidx(rs.getInt("bidx"));
				bulletin.setBname(rs.getString("bname"));
				bulletin.setBtit(rs.getString("btit"));
				bulletin.setBcon(rs.getString("bcon"));
				bulletin.setRdate(rs.getDate("rdate"));
				bulletin.setVisited(rs.getInt("visited"));
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(rs, stmt, con);
		}
		return bulletin;
	}
	public int deleteBulletin(BulletinVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete  from bulletin where bidx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getBidx());
			cnt = stmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
	return cnt;
	}
	public int updateBulletin(BulletinVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql ="update bulletin set btit=?,bcon=? where bidx=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,vo.getBtit());
			stmt.setString(2,vo.getBcon());
			stmt.setInt(3,vo.getBidx());
			cnt = stmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}

}