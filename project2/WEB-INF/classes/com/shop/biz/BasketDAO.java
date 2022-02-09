package com.shop.biz;

import java.sql.*;
import java.util.ArrayList;

import com.shop.model.BasketVO;
import com.shop.model.GoodsVO;
import com.shop.model.DBConn;


public class BasketDAO {
		private Connection con = null;
		private PreparedStatement stmt = null;
		private ResultSet rs = null;
		
		public ArrayList<BasketVO> getBasketList(BasketVO vo){
			ArrayList<BasketVO> basketList = null;
			try {
				con = DBConn.getConnection();
				String sql="select * from basket where cusid=? order by bid desc";
				stmt = con.prepareStatement(sql);
				stmt.setString(1,vo.getCusid());
				rs = stmt.executeQuery();
				basketList = new ArrayList<BasketVO>();
				while(rs.next()) {
					//데이터베이스 테이블에서 반환된 결과를 각 컬럼별로 지역변수에 담기 
					int bid = rs.getInt("bid");
					int gcode = rs.getInt("gcode");
					int scnt = rs.getInt("scnt");
					int sprice = rs.getInt("sprice");
					String cusid = rs.getString("cusid");
					String goodsname = rs.getString("goodsname");
					int validity = rs.getInt("validity");
			
					//각 지역변수에 담긴 필드값을 VO에 던져주기
					BasketVO basket = new BasketVO();
					basket.setBid(bid);
					basket.setGcode(gcode);
					basket.setScnt(scnt);
					basket.setSprice(sprice);
					basket.setCusid(cusid);
					basket.setGoodsname(goodsname);
					basket.setValidity(validity);


					//VO에 담긴 데이터를 리스트에 담기
					basketList.add(basket);
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
			return basketList;
		}
		
			public int deleteBasket(BasketVO vo) {
				int cnt=0;
				try {
					con = DBConn.getConnection();
					String sql ="delete from basket where bid=? and cusid=?";
					stmt =  con.prepareStatement(sql);
					stmt.setInt(1,vo.getBid());
					stmt.setString(2,vo.getCusid());
					cnt = stmt.executeUpdate();
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					DBConn.close(stmt, con);
				}return cnt;
		}
			public int addBasket(BasketVO vo) {
				int cnt =0;
				try {
					con = DBConn.getConnection();
					String sql="insert into basket values(basket_bid.NEXTVAL,?,?,?,?,?,?)";
					stmt = con.prepareStatement(sql);
					stmt.setInt(1, vo.getGcode());
					stmt.setString(2,vo.getGoodsname());
					stmt.setInt(3,vo.getScnt());
					stmt.setInt(4,vo.getSprice());
					stmt.setString(5,vo.getCusid());
					stmt.setInt(6,vo.getValidity());

								
					cnt = stmt.executeUpdate();	
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					DBConn.close(stmt, con);
				}return cnt;
			}
		
		
}

