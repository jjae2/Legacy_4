package com.prac.s1.board.notice;

import java.sql.Date;
import java.util.List;

import com.prac.s1.board.BoardDTO;

public class NoticeDTO extends BoardDTO {
		private List<NoticeFileDTO> fileDTOs;
		//NOTICEDTO 하나의 결과물과 NoticeFileDTO의 결과물 1:N 

		public List<NoticeFileDTO> getFileDTOs() {
			return fileDTOs;
		}

		public void setFileDTOs(List<NoticeFileDTO> fileDTOs) {
			this.fileDTOs = fileDTOs;
		}

}
