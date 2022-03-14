package com.prac.s1.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.prac.s1.util.Pager;

public interface BoardService {

	//add
	public int add(BoardDTO boardDTO,MultipartFile[] files)throws Exception;
   //list
   public List<BoardDTO> list(Pager pager) throws Exception;
   //detail
   public BoardDTO detail(BoardDTO boardDTO)throws Exception;
   //update
   public int update(BoardDTO boardDTO)throws Exception;
   //delete
   public int delete(BoardDTO boardDTO)throws Exception;
}