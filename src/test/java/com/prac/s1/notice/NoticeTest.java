package com.prac.s1.notice;

import static org.junit.Assert.*;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import com.prac.s1.MyJunitTest;
import com.prac.s1.board.notice.NoticeDAO;
import com.prac.s1.board.notice.NoticeDTO;

public class NoticeTest extends MyJunitTest {
	@Autowired
	private NoticeDAO noticeDAO;
	@Test
	public void check() {
		assertNotNull(noticeDAO);
	}
//	@Test
//	public void listTest() throws Exception {
//		List<NoticeDTO> ar =noticeDAO.list();
//		assertNotEquals(0, ar.size());
//	}
//	@Test
//	public void addTest() throws Exception {
//		NoticeDTO noticeDTO = new NoticeDTO();
//		for(int i=0;i<7;i++) {
//		noticeDTO.setTitle("TITLE"+i);
//		noticeDTO.setContents("CONTENTS"+i);
//		noticeDTO.setWriter("WRITER"+i);
//		noticeDTO.setHit(4L);
//		int result = noticeDAO.add(noticeDTO);
//		}
//	}

}
