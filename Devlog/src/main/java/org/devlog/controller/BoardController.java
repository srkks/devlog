package org.devlog.controller;

import javax.servlet.http.HttpSession;

import org.devlog.domain.BoardVO;
import org.devlog.domain.Criteria;
import org.devlog.domain.PageDTO;
import org.devlog.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/devlog")
@AllArgsConstructor
public class BoardController {

	private BoardService service;

	@GetMapping("")
	public String devhome() {
		return "devlog/dev_index";
	}
	
	@GetMapping("/board/register")
	public void register() {
	}


	@GetMapping("/board/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
		model.addAttribute("list", service.getList(cri));
		// model.addAttribute("pageMaker", new PageDTO(cri, 123));

		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@PostMapping("/board/register")
	public String register(BoardVO board, RedirectAttributes rttr) {

		log.info("register: " + board);

		service.register(board);

		rttr.addFlashAttribute("result", board.getBno());

		return "redirect:/devlog/board/list";
	}

	@GetMapping({ "/board/get", "/board/modify" })
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model, HttpSession session) {

		log.info("/board/get or modify");
		service.increaseViewCnt(bno, session);
		model.addAttribute("board", service.get(bno));
	}


	@PostMapping("/board/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);

		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}

		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/devlog/board/list";
	}


	@PostMapping("/board/remove")
	public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr) {

		log.info("remove..." + bno);
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/devlog/board/list";
	}

	 /*글 수정, 삭제 시 비밀번호 확인 : bno값을 가져가서 값에 해당하는 pw를 빼오고 그것과 일치하는지*/ 
	  @RequestMapping(value="/board/checkPw", method=RequestMethod.POST)
	  @ResponseBody /*@ResponseBody는 자바에서 http로  뷰가 아닌 데이터자체를 전달한다.*/
	  public boolean checkPw(@RequestParam String userPw, @RequestParam Long bno) {

		  String userPassword = userPw;
		  String EnteredPassword = service.checkPw(bno);
		  log.info("DB로부터 비밀번호를 잘 받아오는가? " + EnteredPassword);
		  /*기본형타입이 아닌 값 간의 비교는 ==가 아닌 equals를 쓴다.*/
		  if(EnteredPassword.equals(userPassword)) {
			  return true;
		  } else {
			  return false;
		  }
     }

	  /*포스팅 페이지 이동 메소드*/
	  @GetMapping("/posting")
	 
	  public void posting() {
		  
	  }
	  
	  
}