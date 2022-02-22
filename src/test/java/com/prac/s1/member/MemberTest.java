package com.prac.s1.member;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.prac.s1.MyJunitTest;

public class MemberTest extends MyJunitTest {

	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void mypageTest() throws Exception{
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("id3");
	memberDTO=memberDAO.mypage(memberDTO);
	assertNotNull(memberDTO);
		
	}

	//@Test
	public void loginTest() throws Exception{
		MemberDTO memberDTO= new MemberDTO();
		memberDTO.setId("id2");
		memberDTO.setPw("pw2");
		memberDTO=memberDAO.login(memberDTO);
		assertNotNull(memberDTO);
		
	}
}
