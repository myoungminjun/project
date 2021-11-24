package com.company.biz;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.model.ProductVO;


@WebServlet("/GetProductListCtrl")
public class GetProductListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "scott";
		String db_pw = "tiger";
		String sql;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, db_id, db_pw);
			sql = "select * from product order by pronum";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
			while(rs.next()){
				String p_pronum = rs.getString("pronum");
				String p_proname = rs.getString("proname");
				int p_proprice = rs.getInt("proprice");
				int p_procnt = rs.getInt("procnt");
				String p_proimg = rs.getString("proimg");
				
				ProductVO produc= new ProductVO();
				produc.setPronum(p_pronum);
				produc.setProname(p_proname);
				produc.setProprice(p_proprice);
				produc.setProcnt(p_procnt);
				produc.setProimg(p_proimg);
				productList.add(produc);
			}
			request.setAttribute("productList", productList);
			RequestDispatcher view = request.getRequestDispatcher("getProductList.jsp");
			view.forward(request, response);
			
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e){
			response.sendRedirect("e404.jsp");
	         e.printStackTrace();
		}
	}

}
