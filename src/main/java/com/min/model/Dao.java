package com.min.model;

import java.util.List;

import com.min.Dto.BoardDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.StoryDto;

public interface Dao {
	
	// 회원가입
	public boolean joinUser(BoardDto dto);
	
	// 로그인
	public int login(BoardDto dto);
	
	// 관리자 계정 정보
	public BoardDto adminSelect(BoardDto dto);
	
	// 스토리 게시판 목록 (유저 페이지)
	public List<StoryDto> StoryBoardList(int displayPost, int postNum);
	
	// 스토리 게시판 목록 (관리자 페이지)
	public List<StoryDto> StoryBoardList_A(int displayPost, int postNum);
	
	// 스토리 게시판 상세보기 (이메일 공개)
	public StoryDto StoryBoardDetail(String title);
	
	// 스토리 게시판 상세보기 ( 이메일 비공개)
	public StoryDto StoryBoardDetail_N(String title);
	
	// 스토리게시판 글 갯수
	public int StoryBoardCount();
	
	// 스토리 글 등록
	public boolean StoryWrite(StoryDto dto);
	
	// 공지사항 목록
	public List<NoticeDto> NoticeList(int displayPost, int postNum);
	
	// 공지사항 글 갯수
	public int noticeCount();
	
	// 공지사항 상세보기
	public NoticeDto noticeDetail(String seq);
	
	// 스토리 글 승인
	public boolean permitUpdate(int seq);
	
	// 스토리 글 반려
	public boolean denyUpdate(int seq);
	
	// 스토리 승인글 보기
	public List<StoryDto> permitSelect();
	
	// 스토리 반려글 보기
	public List<StoryDto> denySelect();
	
	// 공지사항 글 등록
	public boolean noticeWrite(NoticeDto dto);
	
	// 공지사항 글 삭제
	public boolean noticeDelete(String seq);
	
	
}
