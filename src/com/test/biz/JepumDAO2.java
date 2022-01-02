package com.test.biz;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.test.model.DBConn;
import com.test.model.JepumVO;

public class JepumDAO2 {
		
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public List<JepumVO> getJepum(int startRow, int endRow) { 
		List<JepumVO> JepumList = null;	
		try {
			con = DBConn.getConnection();
			String sql = "select * from Jepum order by jcode desc";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, startRow); // sql 물음표에 값 매핑
			stmt.setInt(2, endRow);
			rs = stmt.executeQuery();
			if (rs.next()) { // 데이터베이스에 데이터가 있으면 실행
				JepumList = new ArrayList<>(); // list 객체 생성
				do {
					// 반복할 때마다 ExboardDTO 객체를 생성 및 데이터 저장
					JepumVO jepum = new JepumVO();
					
					jepum.setJcode(rs.getString("jcode"));
					jepum.setJname(rs.getString("jname"));
					jepum.setJprice(rs.getInt("jprice"));
					jepum.setJcnt(rs.getInt("jcnt"));
					jepum.setJimg(rs.getString("jimg"));
	
					JepumList.add(jepum); // list에 0번 인덱스부터 inform 객체의 참조값을 저장
				} while (rs.next());
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 되지 않았습니다.");
			e.printStackTrace();
		}  catch(SQLException e) {
			System.out.println("SQL 구문 또는 열이름, 변수명 등이 서로 맞지 않습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		//VO의 값을 LIST에 담은 결과를 반환
		return JepumList;
	}
	public int getCount(){
		int count = 0;
		String sql = "select count(*) from jepum";
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
	public JepumVO getjepum(JepumVO vo) {
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
}
