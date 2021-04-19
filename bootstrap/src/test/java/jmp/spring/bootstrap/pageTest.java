package jmp.spring.bootstrap;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import jmp.spring.vo.Criteria;
import jmp.spring.vo.PageNavi;
import lombok.extern.log4j.Log4j;

@Log4j
public class pageTest {
	
	@Autowired
	PageNavi navi;
	
	@Test
	public void pageTester() {
		Criteria cri = new Criteria();
		cri.setPageNo(2);
		PageNavi navi = new PageNavi(cri,150);
		log.info(navi);
	}
}
