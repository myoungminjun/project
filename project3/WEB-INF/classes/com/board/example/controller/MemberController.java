package com.board.example.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.antlr.v4.parse.ANTLRParser.exceptionGroup_return;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/*import com.board.example.dao.MemberDAO;*/
import com.board.example.dto.MemberDTO;
import com.board.example.service.MemberService;

@Controller //스프링에서 관리하는 컨트롤러 빈으로 등록
public class MemberController {
    //MemberService 인스턴스를 주입시킴
    @Inject
    MemberService memberService;
	/*
	 * @Inject MemberDAO memberDao;
	 * 
	 * @Inject MemberDTO member;
	 */
    
    //회원 목록 보기
    @RequestMapping("member/list.do")
    public String memberList(Model model) throws Exception {
    	List<MemberDTO> list = memberService.memberList();
    	model.addAttribute("list", list);
    	return "member/member_list";
    }
    
    //로그인 폼으로 이동(어딘가로 이동(url)이면 String)
    @RequestMapping("member/login.do")
    public String loginPage() {
    	return "member/login";
    }
    
    //로그인 처리
    @RequestMapping(value="member/loginPro.do", method=RequestMethod.POST) 
    public String memberCheckPw(String userid, String passwd, HttpSession session, RedirectAttributes rttr) throws Exception{ 
    	MemberDTO member = new MemberDTO();
    	member = memberService.checkpw(userid, passwd);
    	String msg = "로그인 실패";
    	if(member != null) {
    		session.setAttribute("member", member);
    	}else {
    		session.setAttribute("member", null);
    		rttr.addFlashAttribute("msg", msg);
    	}
    	return "redirect:/";
    }
    
    //로그아웃 처리
    @RequestMapping("member/logout.do")
    public String logOut(HttpSession session) throws Exception {
    	session.invalidate();
    	return "redirect:/";
    }
    
  //관리자가 회원 상세 보기
    //@RequestParam  : request.getParameter("변수명") 대체  
    @RequestMapping("member/view.do") //url mapping -> view.jsp(관리자 회원 상세 보기)
    public String view(@RequestParam String userid, Model model) throws Exception {
	        //모델에 자료 저장
	        model.addAttribute("dto", memberService.viewMember(userid));
	        // view.jsp로 포워딩
	        return "member/view";
    }
    
    
    //회원가입  폼으로 이동
    @RequestMapping("member/join.do")
    public String joinPage() throws Exception {
    	return "member/join";
    }
    
    //회원가입 처리
    @RequestMapping(value="member/joinPro.do", method=RequestMethod.POST)
    public String insertMember(MemberDTO dto) throws Exception {
    	memberService.insertMember(dto);
    	return "redirect:/";
    }   
    
    //일반회원이 본인 정보 보기
    @RequestMapping("member/mypage.do")	//url mapping -> mypage.jsp(마이페이지) 
    public String mypage(String userid, Model model) throws Exception {
    	//모델에 자료 저장
    	model.addAttribute("dto", memberService.viewMember(userid));
    	// view.jsp로 포워딩
    	return "member/mypage"; 
    }
    
    //회원정보 수정 처리
	 @RequestMapping(value="member/update.do", method=RequestMethod.POST)
    public String update(String userid, String passwd, MemberDTO dto, Model model, HttpSession session) throws Exception {
		 MemberDTO member = new MemberDTO();
		 //비밀번호 확인
		 member=memberService.checkpw(userid, passwd);
		 //비밀번호 일치시
		 if(member != null) {
			 memberService.updateMember(dto);
			 this.logOut(session);
			 return "redirect:/";
		 //비밀번호 불일치시
		 }else {
			 model.addAttribute("dto", dto);
			 model.addAttribute("regdate", memberService.viewMember(dto.getUserid()).getRegdate());
			 model.addAttribute("message", "비밀번호를 확인하세요");
			 return "redirect:/";
		 }
	 }
	
	//회원탈퇴 처리
	@RequestMapping("member.delete.do")
	public String delete(String userid, String passwd, MemberDTO dto, Model model) throws Exception {
		MemberDTO member = new MemberDTO();
		member=memberService.checkpw(userid, passwd);
		if(member!=null) {
			memberService.deleteMember(dto.getUserid());
		return "redirect:/";
	}else {
		model.addAttribute("message","비밀번호를 확인하세요.");
        model.addAttribute("dto", memberService.viewMember(dto.getUserid()));
        return "member/view";
	}
  }
}