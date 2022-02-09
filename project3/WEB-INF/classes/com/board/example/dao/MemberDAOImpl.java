package com.board.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.dto.MemberDTO;

//현재 클래스를 스프링에서 관리하는 dao bean으로 설정
@Repository
public class MemberDAOImpl implements MemberDAO {
	//mybatis의 SqlSession 객체를 스프링에서 주입시킴
	//의존관계 주입 느슨한 결합, 제어의 역전
	//@Inject 어노테이션이 있어 sqlSession은 null상태가 아닌 외부에서 객체를 주입받는 형태가 된다.
	@Inject
	SqlSession sqlSession;

	//회원목록 가져오기
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.MemberList");
	}
	
	//회원 상세정보 불러오기
	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return sqlSession.selectOne("member.viewMember", userid);
	}
	
	//회원가입
	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		sqlSession.insert("member.insertMember", dto);

	}
	
	//회원 정보 수정
	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		sqlSession.update("member.updateMember", dto);

	}

	//회원 탈퇴
	@Override
	public void deleteMember(String userid) throws Exception {
		sqlSession.delete("member.deleteMember", userid);

	}
	
	//회원수 카운트
	@Override
	public int memberCnt() throws Exception {
		return sqlSession.selectOne("member.memberCnt");
	}
	
	//로그인
	@Override
	public MemberDTO checkpw(String userid, String passwd) throws Exception {
		MemberDTO dto = new MemberDTO();
		Map<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		dto =  sqlSession.selectOne("member.checkpw", map);
		return dto;
		//아이디와 비밀번호가 맞으면 뭐라고 하셨더라?
	}



}