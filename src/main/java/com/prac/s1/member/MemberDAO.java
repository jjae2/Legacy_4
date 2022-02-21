package com.prac.s1.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.prac.s1.member.MemberDAO.";

	public int join (MemberDTO memberDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"join",memberDTO);
	}
	public MemberDTO login(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"login",memberDTO);
	}
}
