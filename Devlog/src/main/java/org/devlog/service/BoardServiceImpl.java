package org.devlog.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.devlog.domain.BoardVO;
import org.devlog.domain.Criteria;
import org.devlog.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {

		log.info("register......" + board);

		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {

		log.info("get......" + bno);

		return mapper.read(bno);

	}

	@Override
	public boolean modify(BoardVO board) {

		log.info("modify......" + board);

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {

		log.info("remove...." + bno);

		return mapper.delete(bno) == 1;
	}


	@Override
	public List<BoardVO> getList(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
    public String checkPw(Long bno) {
		log.info("bno = "+ bno);
		return mapper.checkPw(bno);
    }
	
	 @Override
	  public void increaseViewCnt(Long bno, HttpSession session) {
		  long update_time = 0;
		  if(session.getAttribute("update_time" + bno) != null) {
			  
		  }
		  long current_time = System.currentTimeMillis();
		  
		  if(current_time - update_time > 5*1000) {
			  mapper.increaseViewCnt(bno);
			  
			  session.setAttribute("update_time" + bno, current_time);
		  }
	  }
}
