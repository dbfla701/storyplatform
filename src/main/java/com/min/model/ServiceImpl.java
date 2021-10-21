package com.min.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.Dto.BoardDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.StoryDto;

@Service
public class ServiceImpl implements IService{
	
	private Logger log = LoggerFactory.getLogger(ServiceImpl.class);
	
	@Autowired
	private Dao dao;

	@Override
	public boolean joinUser(BoardDto dto) {
		log.info("회원가입 : joinUser {} ", dto);
		return dao.joinUser(dto);
	}

	@Override
	public int login(BoardDto dto) {
		log.info("로그인 : login {} ", dto);
		return dao.login(dto);
	}

	@Override
	public BoardDto adminSelect(BoardDto dto) {
		log.debug("관리자 계정 정보 {} ", dto);
		return dao.adminSelect(dto);
	}

	@Override
	public List<StoryDto> StoryBoardList(int displayPost, int postNum) {
		log.info("스토리게시판 목록");
		return dao.StoryBoardList(displayPost,postNum);
	}

	@Override
	public StoryDto StoryBoardDetail(String title) {
		log.info("스토리게시판 상세보기");
		return dao.StoryBoardDetail(title);
	}

	@Override
	public int StoryBoardCount() {
		return dao.StoryBoardCount();
	}

	@Override
	public List<NoticeDto> NoticeList(int displayPost, int postNum) {
		return dao.NoticeList(displayPost,postNum);
	}

	@Override
	public int noticeCount() {
		return dao.noticeCount();
	}

	@Override
	public NoticeDto noticeDetail(String seq) {
		return dao.noticeDetail(seq);
	}

	@Override
	public boolean StoryWrite(StoryDto dto) {
		return dao.StoryWrite(dto);
	}

	@Override
	public StoryDto StoryBoardDetail_N(String title) {
		return dao.StoryBoardDetail_N(title);
	}

	@Override
	public List<StoryDto> StoryBoardList_A(int displayPost, int postNum) {
		return dao.StoryBoardList_A(displayPost, postNum);
	}

	@Override
	public boolean permitUpdate(int seq) {
		return dao.permitUpdate(seq);
	}

	@Override
	public boolean denyUpdate(int seq) {
		return dao.denyUpdate(seq);
	}

	@Override
	public List<StoryDto> permitSelect() {
		return dao.permitSelect();
	}

	@Override
	public List<StoryDto> denySelect() {
		return dao.denySelect();
	}

	@Override
	public boolean noticeWrite(NoticeDto dto) {
		return dao.noticeWrite(dto);
	}

	@Override
	public boolean noticeDelete(String seq) {
		return dao.noticeDelete(seq);
	}

	
}
