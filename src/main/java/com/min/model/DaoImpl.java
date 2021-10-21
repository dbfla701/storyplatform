package com.min.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.Dto.BoardDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.StoryDto;

@Repository
public class DaoImpl implements Dao{
	
	private final String NS = "sqlmap.example.BoardMapper.";
	
	  @Autowired
	  private SqlSessionTemplate session;

	@Override
	public boolean joinUser(BoardDto dto) {
		int n = session.insert(NS+"joinUser", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public int login(BoardDto dto) {
		return session.selectOne(NS+"login", dto);
	}

	@Override
	public BoardDto adminSelect(BoardDto dto) {
		return session.selectOne(NS+"adminSelect", dto);
	}

	@Override
	public List<StoryDto> StoryBoardList(int displayPost, int postNum) {
		
		HashMap<String, Object> data = new HashMap<>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return session.selectList(NS+"StoryBoardList", data);
	}

	@Override
	public StoryDto StoryBoardDetail(String title) {
		return session.selectOne(NS+"StoryBoardDetail", title);
	}

	@Override
	public int StoryBoardCount() {
		return session.selectOne(NS+"StoryBoardCount");
	}

	@Override
	public List<NoticeDto> NoticeList(int displayPost, int postNum) {
		
		HashMap<String, Object> data = new HashMap<>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return session.selectList(NS+"NoticeList", data);
	}

	@Override
	public int noticeCount() {
		return session.selectOne(NS+"noticeCount");
	}

	@Override
	public NoticeDto noticeDetail(String seq) {
		return session.selectOne(NS+"noticeDetail", seq);
	}

	@Override
	public boolean StoryWrite(StoryDto dto) {
		int n = session.insert(NS+"StoryWrite", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public StoryDto StoryBoardDetail_N(String title) {
		return session.selectOne(NS+"StoryBoardDetail_N", title);
	}

	@Override
	public List<StoryDto> StoryBoardList_A(int displayPost, int postNum) {
		
		HashMap<String, Object> data = new HashMap<>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return session.selectList(NS+"StoryBoardList_A", data);
	}

	@Override
	public boolean permitUpdate(int seq) {
		int n = session.update(NS+"permitUpdate", seq);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean denyUpdate(int seq) {
		int n = session.update(NS+"denyUpdate", seq);
		return (n > 0) ? true : false;
	}

	@Override
	public List<StoryDto> permitSelect() {
		return session.selectList(NS+"permitSelect");
	}

	@Override
	public List<StoryDto> denySelect() {
		return session.selectList(NS+"denySelect");
	}

	@Override
	public boolean noticeWrite(NoticeDto dto) {
		int n = session.insert(NS+"noticeWrite", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean noticeDelete(String seq) {
		int n = session.delete(NS+"noticeDelete", seq);
		return (n > 0) ? true : false;
	}

}
