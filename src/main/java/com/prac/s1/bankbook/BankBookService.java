package com.prac.s1.bankbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankBookService {
	@Autowired
	private BankBookDAO bankBookDAO;
	//메서드는 dao와 거의 동일
	
	//add(insert)
	public int add(BankBookDTO bankBookDTO)throws Exception{
		return bankBookDAO.add(bankBookDTO);
	}
	
	//detail
	public BankBookDTO detail(BankBookDTO bankBookDTO)throws Exception{
	return bankBookDAO.detail(bankBookDTO);
	}
	//list
	public List<BankBookDTO> list() throws Exception{
		//dao 메서드 호출 전 전처리 작업
		//호출 후 후처리 작업
		List<BankBookDTO>ar= bankBookDAO.list();
		
		return ar;
	}
}
