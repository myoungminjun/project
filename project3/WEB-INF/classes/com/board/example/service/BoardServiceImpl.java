package com.board.example.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.example.dao.BoardDAO;
import com.board.example.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	BoardDAO boardDao;

	@Override
	public List<BoardDTO> boardlist() throws Exception {
		return boardDao.boardlist();
	}

	@Override
	public BoardDTO boardRead(int bno) throws Exception {
		return boardDao.boardRead(bno);
	}

	@Override
	public void writerBoard(BoardDTO bdto) throws Exception {
		boardDao.writerBoard(bdto);
	}

	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		boardDao.boardUpdate(bdto);
		
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		boardDao.boardDelete(bno);
		
	}

	
}
