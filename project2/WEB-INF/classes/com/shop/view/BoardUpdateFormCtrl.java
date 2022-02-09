package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.BoardDAO;
import com.shop.model.BoardVO;

@WebServlet("/BoardUpdateFormCtrl")
public class BoardUpdateFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num = request.getParameter("num");
        int boardNum = Integer.parseInt(num);
        
        int pageNum =Integer.parseInt(request.getParameter("page"));
		
		BoardVO vo = new BoardVO();
		vo.setNum(boardNum);
		
		BoardDAO dao = new BoardDAO();
		BoardVO board = dao.getBoard(vo);

		if(board != null) {
			request.setAttribute("board", board);
			request.setAttribute("pageNum", pageNum);
			RequestDispatcher view = request.getRequestDispatcher("./board/updateBoard.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetBoardListCtrl");
		}
	}
}