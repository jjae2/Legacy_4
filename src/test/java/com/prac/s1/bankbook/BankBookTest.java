package com.prac.s1.bankbook;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.prac.s1.MyJunitTest;
import com.prac.s1.util.Pager;

public class BankBookTest extends MyJunitTest {
	@Autowired
	private BankBookDAO bankBookDAO;

//	@Test
//	public void check() {
//		assertNotNull(bankBookDAO);
//	}
//
	// list
	@Test
	public void listTest() throws Exception {
		Pager pager =new Pager();
		pager.makeRow();
		List<BankBookDTO> ar = bankBookDAO.list(pager);
		System.out.println(ar.get(0).getBookNumber());
		System.out.println(ar.get(4).getBookNumber());
		assertNotEquals(5, ar.size());
	}

	//insert
	//@Test
	public void addTest() throws Exception {

		for (int i = 0; i < 6; i++) {
			BankBookDTO bankBookDTO = new BankBookDTO();
			bankBookDTO.setBookName("bookName" + i);
			bankBookDTO.setBookContents("bookContents" + i);

			double rate = Math.random();// 0.0~1.0미만 랜덤 0.1234567
			rate = rate * 1000;//123.45678
			int r = (int) rate;//123
			rate = r / 100.0;//1.23

			bankBookDTO.setBookRate(rate);
			bankBookDTO.setBookSale(1);
			int result = bankBookDAO.add(bankBookDTO);

			if (i % 10 == 0) {
				Thread.sleep(1000);//1초 멈춰줘라
			}

		}
		System.out.println("인서트 끝");
	}
}

//	// detail
////	@Test
//	public void detailTest() throws Exception {
//		BankBookDTO bankBookDTO = new BankBookDTO();
//		bankBookDTO.setBookNumber(2L);
//		bankBookDTO = bankBookDAO.detail(bankBookDTO);
//		assertNotNull(bankBookDTO);
//	}
////	@Test
//	public void deleteTest() throws Exception{
//		BankBookDTO bankBookDTO = new BankBookDTO();
//		bankBookDTO.setBookNumber(2L);
//		int result= bankBookDAO.delete(bankBookDTO);
//		assertEquals(1, result);
//		
//	}
//}