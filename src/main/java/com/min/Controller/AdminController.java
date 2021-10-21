package com.min.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.min.Dto.BoardDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.StoryDto;
import com.min.model.IService;

@Controller
public class AdminController {

	private Logger log = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private IService service;
	
	@RequestMapping(value = "/admin/joinUser.do", method = RequestMethod.GET)
	public String login() {
		log.debug("관리자 회원가입");
		return "/admin/joinUser";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinPost(BoardDto dto) {
		service.joinUser(dto);
		log.debug("관리자 회원가입 post {}", dto);
		return "/admin/adminLogin";
	}
	
	@RequestMapping(value = "/admin/adminLogin.do", method = RequestMethod.GET)
	public String adminLogin() {
		log.debug("관리자 회원가입");
		return "/admin/adminLogin";
	}
	
	@RequestMapping(value = "/logining.do", method = RequestMethod.POST)
	public String adminLoginPost(BoardDto dto, Model model, HttpSession session) {
		
		int n = service.login(dto);
		BoardDto admin = service.adminSelect(dto);
		
		System.out.println("count = "+n);
		log.debug("관리자 로그인 {}", dto);
		
		if(n==1) {
			System.out.println(admin);
			session.setAttribute("adminid", admin);
			System.out.println(admin.getAdminid());
			model.addAttribute("msg", "로그인 성공");
			model.addAttribute("url", "/main.do");
		}else if(n==0){
			model.addAttribute("msg", "로그인 실패");
			model.addAttribute("url", "/main.do");
		}
		return "redirect";
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout() {
		log.debug("관리자 로그아웃");
		return "/logout";
	}

	// 공지사항 글 등록 post
	@RequestMapping(value = "/noticeWrite.do", method = RequestMethod.POST)
	public String noticeWrite(NoticeDto dto) {
		service.noticeWrite(dto);
		log.debug("noticeAllList");
		return "redirect:/admin/noticeAllList.do?num=1";
	}
	
	// 공지사항 글 등록
	@RequestMapping(value = "/admin/noticeForm.do", method = RequestMethod.GET)
	public String noticeForm() {
		log.debug("noticeForm");
		return "/admin/noticeForm";
	}
	
	@RequestMapping(value = "/admin/noticeAllListDetail.do", method = RequestMethod.GET)
	public String noticeAllListDetail(@RequestParam String seq, Model model) {
		NoticeDto lists = service.noticeDetail(seq);
		System.out.println(seq);
		model.addAttribute("dto", lists);
		return "/admin/noticeAllListDetail";
	}
	
	// 공지사항 목록
	@RequestMapping(value = "/admin/noticeAllList.do", method = RequestMethod.GET)
	public String noticeAllList(NoticeDto dto, Model model, @RequestParam("num") int number) {
		
		// 게시물 총 갯수
		int count = service.noticeCount();

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
		
		List<NoticeDto> lists = service.NoticeList(displayPost, postNum);
		
		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum); // 페이지 총 갯수
		model.addAttribute("dto", lists);
		
		return "/admin/noticeAllList";
	}

	@RequestMapping(value = "/admin/pwUpdate.do", method = RequestMethod.GET)
	public String pwUpdate() {
		log.debug("pwUpdate");
		return "/admin/pwUpdate";
	}

	// 스토리 게시판 등록된 글 (전체)
	@RequestMapping(value = "/admin/storyAllList.do", method = RequestMethod.GET)
	public String storyAllList(StoryDto dto, Model model, @RequestParam("num") int number) {
		
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
		
		
		//////////////////////////////////////////// 이부분 수정해야함
		List<StoryDto> lists = service.StoryBoardList_A(displayPost, postNum); 

		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum); // 페이지 총 갯수
		model.addAttribute("dto", lists);
		
		return "/admin/storyAllList";
	}
	
	@ResponseBody
	@RequestMapping(value = "/admin/storyPermitList.do", method = RequestMethod.POST)
	public String storyPermitListPost(@RequestParam int seq) {
		System.out.println(seq);
		service.permitUpdate(seq);
		log.debug("storyPermitList");
		return "/admin/storyPermitList";
	}
	
	@ResponseBody
	@RequestMapping(value = "/admin/storyDenyList.do", method = RequestMethod.POST)
	public String storyDenyListPost(@RequestParam int seq) {
		System.out.println(seq);
		service.denyUpdate(seq);
		return "/admin/storyDenyList";
	}
	
	@RequestMapping(value = "/admin/storyPermitList.do", method = RequestMethod.GET)
	public String storyPermitList(Model model) {
		List<StoryDto> lists = service.permitSelect();
		model.addAttribute("dto", lists);
		log.debug("storyPermitList");
		return "/admin/storyPermitList";
	}

	@RequestMapping(value = "/admin/storyDenyList.do", method = RequestMethod.GET)
	public String storyDenyList(Model model) {
		List<StoryDto> lists = service.denySelect();
		model.addAttribute("dto", lists);
		log.debug("storyDenyList");
		return "/admin/storyDenyList";
	}

	@RequestMapping(value = "/admin/storyAllListDetail.do", method = RequestMethod.GET)
	public String storyAllListDetail(@RequestParam String title, Model model) {
		StoryDto lists = service.StoryBoardDetail(title);
		System.out.println(title);
		model.addAttribute("dto", lists);
		log.info("스토리 게시판 상세보기 {}",lists);
		System.out.println(lists);
		return "/admin/storyAllListDetail";
	}
	
	// 공지사항 글 삭제
	@RequestMapping(value = "/admin/delete.do", method = RequestMethod.GET)
	public String delete(@RequestParam("seq") String seq, Model model) {
		service.noticeDelete(seq);
		System.out.println("삭제 번호 ="+seq);
		model.addAttribute("msg", "삭제 되었습니다.");
		model.addAttribute("url", "/admin/noticeAllList.do?num=1");
		return "redirect";
	}
	
	// 공지사항 글 수정
	/*
	 * @RequestMapping(value = "/admin/modify.do", method = RequestMethod.GET)
	 * public String modify(@RequestParam("seq") String seq, Model model) { return
	 * "redirect"; }
	 */
	
}

