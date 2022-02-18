package com.prac.s1.notice;

import static org.junit.Assert.*;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import com.prac.s1.MyJunitTest;

public class NoticeTest extends MyJunitTest {
	@Autowired
	private NoticeDAO noticeDAO;
	@Test
	public void check() {
		assertNotNull(noticeDAO);
	}
	@Test
	public void listTest() throws Exception {
		List<NoticeDTO> ar =noticeDAO.list();
		assertNotEquals(0, ar.size());
	}
	@Test
	public void addTest() throws Exception {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setTitle("T3");
		noticeDTO.setContents("C3");
		noticeDTO.setWriter("W3");
		noticeDTO.setHit(3L);
		int result = noticeDAO.add(noticeDTO);
		assertEquals(1, result);
	}

}
