package com.board.example.service;

import java.util.List;

import com.board.example.dto.MemberDTO;

public interface MemberService {
	
	//회원목록 가져오기
	public List<MemberDTO> memberList() throws Exception;

	//회원 상세정보 불러오기
	public MemberDTO viewMember(String userid) throws Exception;

	//회원가입
	public void insertMember(MemberDTO dto) throws Exception;

	//회원 정보 수정
	public void updateMember(MemberDTO dto) throws Exception;

	//회원 탈퇴
	public void deleteMember(String userid) throws Exception;

	//회원수 카운트
	public int memberCnt() throws Exception;

	//로그인
	public MemberDTO checkpw(String userid, String passwd) throws Exception;
}
