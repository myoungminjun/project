package com.shop.biz;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.shop.model.DBConn;
import com.shop.model.InformVO;


//Inform테이블에 접근하여 데이터 처리요청되어 온 일을 모두 한 곳에서 처리하기 위한 모듈 =>배치 프로그래밍
public class InformDAO2 {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	//공지사항 리스트를 데이터베이스에 접근하여 가져와서 VO에 담은 후 controller에 리턴해주는 역할의 메서드
	public List<InformVO> getList(int startRow, int endRow){
		List<InformVO> List = null;
		try {
			con = DBConn.getConnection();
			String sql="select*from (select rownum as rn, idx, inname, intit, incon, rdate, visited from (select * from inform order by idx desc)) where rn between ? and ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1,startRow);
			stmt.setInt(2,endRow);
			rs = stmt.executeQuery();
			if(rs.next()) {
				List = new ArrayList<>();
				do {//데이터베이스 테이블에서 반환된 결과를 각 컬럼별로 지역변수에 담기 
					InformVO inform = new InformVO();
					inform.setIdx(rs.getInt("idx"));
					inform.setInname(rs.getString("inname"));
					inform.setIntit(rs.getString("intit"));
					inform.setIncon(rs.getString("incon"));
					inform.setRdate(rs.getDate("rdate"));
					inform.setVisited(rs.getInt("visited"));
					//VO에 담긴 데이터를 리스트에 담기
					List.add(inform);
				}while(rs.next());
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			DBConn.close(rs, stmt, con);
		}
		//VO의 값을 리스트에 담은 결과를 반환
		return List;
	}
	//총 레코드 수 구하는 로직
	public int getCount() {
		int count = 0;
		String sql = "select count(*) from inform";
		try {
			con = DBConn.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
				}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(rs, stmt, con);
		}return count;
	}
 }

