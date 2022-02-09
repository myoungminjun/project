package com.board.example.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	//객체주입(Dependency Injection) -> 스스로 필요한 명령을 불러 처리할 수 있게 됨 -> IoC(제어의 역전)
	@Inject
	SqlSession sqlSession;
	//SqlSession은 mybatis를 sql로 실행할 때 필요하다.
	
	
	//게시물 목록 보기(.selectList() : mybatis로 실행하여 목록으로 결과를 받기 위한 메서드)
	@Override
	public List<BoardDTO> boardlist() throws Exception {
		return sqlSession.selectList("board.boardList");
	}
	
	//게시물 상세내용 불러오기(.selectOne(해당mapper_id, 전달값) : 하나의 레코드를 결과로 받기 위한 메서드)
	@Override
	public BoardDTO boardRead(int bno) throws Exception {
		return sqlSession.selectOne("board.boardRead", bno);
	}
	
	//게시물 작성(.insert(해당mapper_id, 전달객체) : mybatis로 DB에 하나의 레코드를 추가
	@Override
	public void writerBoard(BoardDTO bdto) throws Exception {
		sqlSession.insert("board.boardWriter", bdto);
		
	}
	
	//게시물 수정
	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		sqlSession.update("board.boardUpdate", bdto);
		
	}
	
	//게시물 삭제
	@Override
	public void boardDelete(int bno) throws Exception {
		sqlSession.delete("board.boardDelete", bno);
		
	}
	
	

	

	

	

}
