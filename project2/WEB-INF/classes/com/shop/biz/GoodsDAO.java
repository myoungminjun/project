package com.shop.biz;

import java.sql.*;
import java.util.ArrayList;

import com.shop.model.DBConn;
import com.shop.model.GoodsVO;


//Inform테이블에 접근하여 데이터 처리요청되어 온 일을 모두 한 곳에서 처리하기 위한 모듈 =>배치 프로그래밍
public class GoodsDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	//공지사항 리스트를 데이터베이스에 접근하여 가져와서 VO에 담은 후 controller에 리턴해주는 역할의 메서드
	public ArrayList<GoodsVO> getGoodsList(){
		ArrayList<GoodsVO> goodsList = null;
		try {
			con = DBConn.getConnection();
			String sql="select*from goods";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			goodsList = new ArrayList<GoodsVO>();
			while(rs.next()) {
				
				
				String gcode = rs.getString("gcode");
				String gname = rs.getString("gname");
				int gprice = rs.getInt("gprice");
				int gcnt = rs.getInt("gcnt");
				String gimg = rs.getString("gimg");
				
				
				GoodsVO goods = new GoodsVO();
				goods.setGcode(gcode);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGcnt(gcnt);
				goods.setGimg(gimg);

				
				//VO에 담긴 데이터를 리스트에 담기
				goodsList.add(goods);
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
		
		return goodsList;
	}
		public GoodsVO getGoods(GoodsVO vo) {
			GoodsVO goods = null;
			try {
				con = DBConn.getConnection();
				String sql = "select * from goods where gcode=?";
				stmt = con.prepareStatement(sql);
				stmt.setString(1,vo.getGcode());
				rs = stmt.executeQuery();
				if(rs.next()) {
					    goods = new GoodsVO();
					    goods.setGcode(rs.getString("gcode"));
					    goods.setGname(rs.getString("gname"));
					    goods.setGprice(rs.getInt("gprice"));
					    goods.setGcnt(rs.getInt("gcnt"));
					    goods.setGimg(rs.getString("gimg"));

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
				
				return goods;
		}
	public int addGoods(GoodsVO vo) {
		int cnt =0;
		try {
			con = DBConn.getConnection();
			String sql="insert into Goods values(goods_gcode.NEXTVAL,?,?,?,?,'')";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,vo.getGname());
			stmt.setInt(2,vo.getGprice());
			stmt.setInt(3,vo.getGcnt());
			stmt.setString(4,vo.getGimg());

			
			cnt = stmt.executeUpdate();	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}return cnt;
	}
	public int deleteGoods(GoodsVO vo) {
		int cnt=0;
		try {
			con = DBConn.getConnection();
			String sql ="delete from goods where gcode=?";
			stmt =  con.prepareStatement(sql);
			stmt.setString(1,vo.getGcode());
			cnt = stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}return cnt;
}
	public int updateGoods(GoodsVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update goods set gname=?, gprice=?, gcnt=?, gimg=? where gcode=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,vo.getGname());
			stmt.setInt(2,vo.getGprice());
			stmt.setInt(3,vo.getGcnt());
			stmt.setString(4,vo.getGimg());
			stmt.setString(5,vo.getGcode());

			cnt = stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConn.close(stmt, con);
		}return cnt;
	}
		
}
