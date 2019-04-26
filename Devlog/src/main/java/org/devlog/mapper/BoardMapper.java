package org.devlog.mapper;

import java.util.List;

import org.devlog.domain.BoardVO;
import org.devlog.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getList();

	public List<BoardVO> getListWithPaging(Criteria cri);

	public void insert(BoardVO board);

	public Integer insertSelectKey(BoardVO board);

	public BoardVO read(Long bno);

	public int delete(Long bno);

	public int update(BoardVO board);

	public int getTotalCount(Criteria cri);
	
	public String checkPw(Long bno);
	
	public void increaseViewCnt(Long bno);
}
