package com.prac.s1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/notice/*")
public class NoticeController {
@Autowired
private NoticeService noticeService;

@RequestMapping(value="list", method=RequestMethod.GET)
public ModelAndView list(ModelAndView mv)throws Exception{
	List<NoticeDTO> ar = noticeService.list();
	mv.addObject("list",ar);
	mv.setViewName("bankbook/list");
	return mv;
}
@RequestMapping(value = "detail", method=RequestMethod.GET)
public void detail(NoticeDTO noticeDTO,Model model)throws Exception{
	noticeDTO=noticeService.detail(noticeDTO);
	model.addAttribute("dto",noticeDTO);
}

}
