package org.devlog.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.devlog.domain.BoardVO;
import org.devlog.domain.Criteria;

public interface BoardService {

	public void register(BoardVO board);

	public BoardVO get(Long bno);

	public boolean modify(BoardVO board);

	public boolean remove(Long bno);

	// public List<BoardVO> getList();

	public List<BoardVO> getList(Criteria cri);

	//추가
	public int getTotal(Criteria cri);

	public String checkPw(Long bno);
	
	/*게시글 조회수 처리*/
	public void increaseViewCnt(Long bno, HttpSession session);
}
