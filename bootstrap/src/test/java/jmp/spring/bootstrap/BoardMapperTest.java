package jmp.spring.bootstrap;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import jmp.spring.mapper.BoardMapper;
import jmp.spring.service.BoardService;
import jmp.spring.vo.BoardVo;
import jmp.spring.vo.Criteria;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTest {

	@Autowired
	BoardService service;
	
	@Autowired
	BoardMapper mapper;
	
	@Test
	public void getTotal() {
		log.info(mapper.getTotal());
	}
	
	@Test
	public void getList() {
		Criteria cri = new Criteria();
		cri.setPageNo(3);
		cri.setAmount(10);
		List<BoardVo> list = mapper.getList(cri);
		log.info(list);
	}
	
	@Test
	public void testInsert() {
		BoardVo board = new BoardVo();
		board.setTitle("새로 작성");
		board.setContent("새 내용");
		board.setWriter("작가");
		mapper.insertBoard(board);
		log.info(board);
	}
	
}
