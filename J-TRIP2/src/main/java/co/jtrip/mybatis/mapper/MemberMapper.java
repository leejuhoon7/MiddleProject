package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.member.service.MemberVO;

public interface MemberMapper {
	List<MemberVO> MemberSelectList();
	MemberVO memberSelect(MemberVO vo); // 로그인 체크.
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	boolean isIdCheck(String id); // 아이디 중복 체크.

}
