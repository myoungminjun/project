package com.shop.biz;

import java.sql.*;
import java.util.ArrayList;

import com.shop.model.DBConn;
import com.shop.model.PayVO;





public class PayDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	public ArrayList<PayVO> getPayList(PayVO vo){
		ArrayList<PayVO> payList = null;
		try {
			con = DBConn.getConnection();
			String sql="select * from pay where userid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,vo.getUserid());
			rs = stmt.executeQuery();
			payList = new ArrayList<PayVO>();
			while(rs.next()) {
				//데이터베이스 테이블에서 반환된 결과를 각 컬럼별로 지역변수에 담기 
				String userid = rs.getString("userid");
				String gcode = rs.getString("gcode");
				String cnt = rs.getString("cnt");
				int zipcode = rs.getInt("zipcode");
				String add1 = rs.getString("add1");
				String add2 = rs.getString("add2");
				String cusemail = rs.getString("cusemail");
				String contact = rs.getString("contact");
				int paytype = rs.getInt("paytype");
				int creditnum = rs.getInt("creditnum");
				
				//각 지역변수에 담긴 필드값을 VO에 던져주기
				PayVO pay = new PayVO();
				pay.setGcode(gcode);
				pay.setUserid(userid);
				pay.setZipcode(zipcode);
				pay.setAdd1(add1);
				pay.setAdd2(add2);
				pay.setCusemail(cusemail);
				pay.setContact(contact);
				pay.setPaytype(paytype);
				pay.setCreditnum(creditnum);
				//VO에 담긴 데이터를 리스트에 담기
				payList.add(pay);
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
		return payList;
	}

		public int addPay(PayVO vo) {
			int cnt =0;
			try {
				con = DBConn.getConnection();
				String sql="insert into pay values(pay_pcode.nextval,?,?,?,?,?,?,?,?,?)";
				stmt = con.prepareStatement(sql);
				stmt.setString(1, vo.getGcode());
				stmt.setString(2,vo.getUserid());
				stmt.setString(3,vo.getContact());
				stmt.setInt(4, vo.getZipcode());
				stmt.setString(5,vo.getAdd1());
				stmt.setString(6,vo.getAdd2());
				stmt.setString(7,vo.getCusemail());		
				stmt.setInt(8,vo.getCreditnum());
				stmt.setInt(9,vo.getPaytype());

				cnt = stmt.executeUpdate();	
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConn.close(stmt, con);
			}return cnt;
		}
 }

