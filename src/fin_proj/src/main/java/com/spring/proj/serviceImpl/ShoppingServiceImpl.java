package com.spring.proj.serviceImpl;
//서비스 기능수행
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.ShoppingDAOMybatis;
import com.spring.proj.domain.ShoppingVO;
import com.spring.proj.service.ShoppingService;




@Service("ShoppingService")
public class ShoppingServiceImpl implements ShoppingService {

	@Autowired
	//private BoardDAO dao;
	private ShoppingDAOMybatis dao;
	
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	

	
	@Override   //insertService 는 Service의 메서드 이름이다.
	public void insertService(ShoppingVO vo) {
		System.out.println("impl" + vo);

		//  DAOMybatis의 메서드 이름 
		dao.insertShopping(vo); // 핵심 로직.
		
	}

	@Override //목록보기
	public ShoppingVO getService(String s_no) {
		//log.printLog("= getService() =");
		System.out.println(s_no);
		ShoppingVO shopping = dao.getBoard2(s_no);
		
		return shopping;
	}

	@Override //list
	public List<ShoppingVO> getServiceList(ShoppingVO vo) {
		//log.printLog("= getServiceList() =");
		return dao.getBoardList2(vo);
	}

	@Override
	public void updateService(ShoppingVO vo) {
		//log.printLog("= updateService() =");
		dao.updateShopping(vo);
	}

	@Override
	public void deleteService(String s_no) {
		//log.printLog("= deleteService() =");
		dao.deleteShopping(s_no);
	}


	
}
