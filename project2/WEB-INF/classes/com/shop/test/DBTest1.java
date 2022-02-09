package com.shop.test;
import java.sql.*;

import com.shop.model.DBConn;
public class DBTest1 {
	private static Connection con = null;
	private static PreparedStatement stmt = null;
	private static ResultSet rs = null;
	public static void main(String[] args) {
		try {
			con = DBConn.getConnection();
			String sql = "select*from goods";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				System.out.println("");
			}
			DBConn.close(rs,stmt,con);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

	}


