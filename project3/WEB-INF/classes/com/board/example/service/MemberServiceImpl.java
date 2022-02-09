package com.board.example.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.example.dao.MemberDAO;
import com.board.example.dto.MemberDTO;

//현재 클래스를 스프링에서 관리하는 service bean으로 설정
@Service
public class MemberServiceImpl implements MemberService {
    //dao 인스턴스를 주입시킴
    @Inject
    MemberDAO memberDao;
    
    //회원 목록 불러오기
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}
	
	//회원 상제정보 불러오기
	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return memberDao.viewMember(userid);
	}
	
	//회원 가입
	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		memberDao.insertMember(dto);
		
	}
	
	//회원 정보 수정
	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		memberDao.updateMember(dto);
		
	}
	
	//회원 탈퇴
	@Override
	public void deleteMember(String userid) throws Exception {
		memberDao.deleteMember(userid);		
	}
	
	//회원수
	@Override
	public int memberCnt() throws Exception {
		return memberDao.memberCnt();
	}
	
	//로그인을 위한 비밀번호 확인
	@Override
	public MemberDTO checkpw(String userid, String passwd) throws Exception {
		return memberDao.checkpw(userid, passwd);
	}

}