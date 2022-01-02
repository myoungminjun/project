package com.test.test;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


import com.test.biz.BulletinDAO;
import com.test.model.DBConn;
import com.test.model.BulletinVO;

public class UnitTest1 {
	private static BulletinDAO dao;
	private static BulletinVO vo;
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		dao = new BulletinDAO();
		System.out.println("DAO 생성 성공");
	}
	
	@Before
	public void setUp() throws Exception {
		vo = new BulletinVO();
		System.out.println("VO 생성 성공");
	}

	@After
	public void tearDown() throws Exception {
		DBConn.close(rs, stmt, con);
		System.out.println("DB 닫기 성공");
	}

	@Test
	public void test() {
		String btit = "VO에 대한 JUnit Test";
		vo.setBtit(btit);
		System.out.println(vo.getBtit());
		System.out.println("VO TEST 성공");
	}
	
	@Test
	public void test2() {
		ArrayList<BulletinVO> bulletinList = dao.getBulletinList(); //Ctrl
		for(int i=0;i<bulletinList.size();i++){	//jsp파일
		  vo = bulletinList.get(i);
		  System.out.println(vo.getBtit());
		}
	}

}
