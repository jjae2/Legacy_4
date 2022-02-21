package com.prac.s1.bankbook;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.prac.s1.MyJunitTest;

public class BankBookTest extends MyJunitTest {
	@Autowired
	private BankBookDAO bankBookDAO;

	@Test
	public void check() {
		assertNotNull(bankBookDAO);
	}

	// list
	@Test
	public void listTest() throws Exception {
		List<BankBookDTO> ar = bankBookDAO.list();
		assertNotEquals(0, ar.size());
	}

	//insert
//	   @Test
//	   public void addTest() throws Exception{
//	      for(int i=0;i<10;i++) {
//	      BankBookDTO bankBookDTO = new BankBookDTO();
//	      bankBookDTO.setBookName("bookName"+i);
//	      bankBookDTO.setBookContents("bookContents"+i);
//	      bankBookDTO.setBookRate(1.12+i);
//	      bankBookDTO.setBookSale(1);
//	      int result = bankBookDAO.add(bankBookDTO);
//	      }
//	      System.out.println("Insert Finish");
//	      //assertEquals(1, result);
//	      
//	   }

	// detail
//	@Test
	public void detailTest() throws Exception {
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(2L);
		bankBookDTO = bankBookDAO.detail(bankBookDTO);
		assertNotNull(bankBookDTO);
	}
//	@Test
	public void deleteTest() throws Exception{
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(2L);
		int result= bankBookDAO.delete(bankBookDTO);
		assertEquals(1, result);
		
	}
}