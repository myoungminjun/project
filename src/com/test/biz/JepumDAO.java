package com.test.biz;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.test.model.*;
import com.test.model.DBConn;

public class JepumDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	//공지사항 리스트를 데이터베이스에 접근하여 가져와서 VO에 담은 후 Controller에 리턴해주는 역할의 메서드
	public ArrayList<JepumVO> getJepumList(){
		ArrayList<JepumVO> JepumList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from Jepum order by jcode desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			JepumList = new ArrayList<JepumVO>();
			while(rs.next()) {

				String jcode = rs.getString("jcode");
				String jname = rs.getString("jname");
				int jprice = rs.getInt("jprice");
				int jcnt = rs.getInt("jcnt");
				String jimg = rs.getString("jimg");

				JepumVO jepum = new JepumVO();

				jepum.setJcode(jcode);
				jepum.setJname(jname);
				jepum.setJprice(jprice);
				jepum.setJcnt(jcnt);
				jepum.setJimg(jimg);

				JepumList.add(jepum);
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
		return JepumList;
	}
	public JepumVO getJepum(JepumVO vo) {
		JepumVO jepum = null;
		try {
			con = DBConn.getConnection();
			String	sql = "select * from jepum where jcode = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getJcode());
			rs = stmt.executeQuery();
			if(rs.next()) {
				jepum = new JepumVO();
				jepum.setJcode(rs.getString("jcode"));
				jepum.setJname(rs.getString("jname"));
				jepum.setJprice(rs.getInt("jprice"));
				jepum.setJcnt(rs.getInt("jcnt"));
				jepum.setJimg(rs.getString("jimg"));
				}
				
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return jepum;
	}
	public int updateJepum(JepumVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update inform set jcode=?, jname=?, jprice=?, jprice=?, jcnt=?, jimg=? where jcode=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getJname());
			stmt.setInt(2, vo.getJprice());
			stmt.setInt(3, vo.getJcnt());
			stmt.setString(4, vo.getJimg());
			stmt.setString(5, vo.getJcode());
			cnt = stmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteJepum(JepumVO vo) {
		int cnt=0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from jepum where jcode=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getJcode());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int AddJepum(JepumVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into Jepum values (jepum_jcode.NEXTVAL,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, vo.getJname());
			stmt.setInt(2, vo.getJprice());
			stmt.setInt(3, vo.getJcnt());
			stmt.setString(4, vo.getJimg());
			cnt = stmt.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
}
