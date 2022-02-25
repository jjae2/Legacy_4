package com.prac.s1.bankbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prac.s1.util.Pager;

@Service
public class BankBookService {
	@Autowired
	private BankBookDAO bankBookDAO;
	// 메서드는 dao와 거의 동일
	//update
	public int update(BankBookDTO bankBookDTO) throws Exception{
		return bankBookDAO.update(bankBookDTO);
	}
	
	// add(insert)
	public int add(BankBookDTO bankBookDTO) throws Exception {
		return bankBookDAO.add(bankBookDTO);
	}
	// detail
	public BankBookDTO detail(BankBookDTO bankBookDTO) throws Exception {
		return bankBookDAO.detail(bankBookDTO);
	}
	// list
	public List<BankBookDTO> list(Pager pager) throws Exception {
		pager.makeRow();
		Long totalCount =bankBookDAO.total(pager);
		pager.makeNum(totalCount);
		List<BankBookDTO> ar = bankBookDAO.list(pager);
		return ar;
	}
	//delete
	public int delete(BankBookDTO bankbookDTO) throws Exception{
		return bankBookDAO.delete(bankbookDTO);
	}
}
