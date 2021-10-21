package com.min.Controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.min.Dto.StoryDto;
import com.min.model.IService;

@Controller
public class StoryController {
	
	private Logger log = LoggerFactory.getLogger(StoryController.class);
	
	@Autowired
	private IService service;
	
	@RequestMapping(value = "/StoryBoard.do", method = RequestMethod.GET)
	public String StoryBoard(StoryDto dto, Model model, @RequestParam("num") int number) {
		
		// 게시물 총 갯수
		int count = service.StoryBoardCount();

		// 한 페이지에 출력할 게시물 갯수
		int postNum = 10;

		// 하단 페이징 갯수 ( '게시물 총갯수 / 한페이지에 출력할 갯수' 의 올림) // 나머지 페이지들도 보여야하니까
		int pageNum = (int) Math.ceil((double) count / postNum);

		// 페이지에서 첫번째 게시글의 번호
		int displayPost = (number - 1) * postNum;

		// 하단에 한페이지에 보여지는 페이지의 갯수
		int pageNum_cnt = 5;

		// 표시되는 하단 페이지 번호 중 마지막 번호
		int endPageNum = (int) (Math.ceil((double) number / (double) pageNum_cnt) * pageNum_cnt);

		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);

		// 마지막 번호 재계산
		int endPageNum_tmp = (int) (Math.ceil((Math.ceil((double) count / (double) pageNum_cnt)) / 2));

		if (endPageNum > endPageNum_tmp) { // 빈페이지가 없게 하려고
			endPageNum = endPageNum_tmp;
		}

		/* boolean prev = startPageNum == 1 ? false : true; */
		boolean prev= true;
		boolean next= true;

		
		// 이전 링크는 시작페이지번호가 1일때를 제외하곤 무조건 출력 되어야 함
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);

		// 현재 페이지
		model.addAttribute("select", number);
		
		List<StoryDto> lists = service.StoryBoardList(displayPost, postNum);

		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum); // 페이지 총 갯수
		model.addAttribute("dto", lists);
		return "StoryBoard";
	}
	
	@RequestMapping(value = "/StoryBoardDetail.do", method = RequestMethod.GET)
	public String StoryBoardDetail(@RequestParam String title, Model model) {
		StoryDto lists = service.StoryBoardDetail(title);
		System.out.println(title);
		model.addAttribute("dto", lists);
		log.info("스토리 게시판 상세보기 {}",lists);
		System.out.println(lists);
		return "StoryBoardDetail";
	}
	
	@RequestMapping(value="writing.do", method = RequestMethod.POST)
	public String writing(StoryDto dto, Model model) {
		System.out.println(dto);
		service.StoryWrite(dto);
		model.addAttribute("msg", "글등록 완료");
		model.addAttribute("url", "/admin/storyAllList.do?num=1");
		System.out.println(dto);
		return "redirect";
	}
	
	@RequestMapping(value = "/StoryWriteForm.do", method = RequestMethod.GET)
	public String StoryWriteForm() {
		return "StoryWriteForm";
	}

}
