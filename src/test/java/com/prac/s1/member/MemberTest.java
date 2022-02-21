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
	public void check() {
		assertNotNull(memberDAO);
	}
//	@Test
//	public void listTest() throws Exception{
//		List<MemberDTO> ar= memberDAO.list();
//		assertNotEquals(0, ar.size());
//	}
//	@Test
//	public void joinTest() throws Exception{
//		MemberDTO memberDTO= new MemberDTO();
//		memberDTO.setId("id");
//		memberDTO.setPw("pw2");
//		memberDTO.setName("name2");
//		memberDTO.setPhone("010-6666-6666");
//		memberDTO.setEmail("id2@naver.com");
//		int result= memberDAO.join(memberDTO);
//		assertEquals(1, result);
//	}

	@Test
	public void loginTest() throws Exception{
		MemberDTO memberDTO= new MemberDTO();
		memberDTO.setId("id2");
		memberDTO.setPw("pw2");
		memberDTO=memberDAO.login(memberDTO);
		assertNotNull(memberDTO);
		
	}
}
