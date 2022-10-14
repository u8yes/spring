package com.springproj.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.springproj.biz.domain.ProductVO;
import com.springproj.biz.service.ProductService;

@Controller
@SessionAttributes("product")
public class productController {
	
	@Autowired
	ProductService productService;

	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET) // value = : 이거는 하나만 세팅 해줄 때는 안써도 가능.
	@GetMapping("/insertProduct.p") // 4점대 버전 이후부터 사용 가능한 기능.
	public String productinsert() {
		//System.out.println("글 등록 화면 처리");
		
		return "adminProduct/insertProduct";
	}
	
	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	@PostMapping("/insertProduct.p")
	public String productinsert(ProductVO product, HttpSession session) throws IOException {
		System.out.println("글 등록 처리");
		System.out.println(product);
		// 파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/productUpload/");
		System.out.println("=>" + fileSaveFolder);
		
		MultipartFile uploadFile = product.getUploadFile();
		MultipartFile uploadFile2 = product.getUploadFile2();
		
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			System.out.println("===>"+fileName);
			uploadFile.transferTo(new File(fileSaveFolder+fileName));
			product.setP_pimg(fileName);

		}
		
		if(!uploadFile2.isEmpty()) {
			String fileName = uploadFile2.getOriginalFilename();
			System.out.println("===>"+fileName);
			uploadFile2.transferTo(new File(fileSaveFolder+fileName));
			product.setP_dimg(fileName);

		}
				
		productService.insertService(product);
		
		return "redirect:getProductList.p";
	}
	
	@RequestMapping(value = "/getProduct.p")
	public String getProduct(ProductVO product, Model model) {
		//System.out.println("GetBoardController 처리.");
		
		ProductVO vo = productService.getService(product.getP_pno());
		
		model.addAttribute("product", vo); // command 객체로 이용 가능하다.
		
		return "adminProduct/getProduct";
	}
	
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("회사", "P_PNO");
		conditionMap.put("설명", "BM_NO");
		
		return conditionMap;
	}
		
	@RequestMapping(value = "/getProductList.p")
	public String getProductList(ProductVO vo, Model model) {
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("P_PNO");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<ProductVO> list = productService.getServiceList(vo);
		
		model.addAttribute("productList", list);
		
		return "adminProduct/getBasketList";
	}
		
	@RequestMapping(value = "/updateProduct.p")
	public String updateProductProc(@ModelAttribute("product") ProductVO vo) {
		//System.out.println("글 수정 처리.");
		System.out.println(vo);
		
		productService.updateService(vo);
		
		return "redirect:getProductList.p";
	}

	@RequestMapping(value = "/deleteProduct.p")
	public String deleteProduct(ProductVO product) {
		//System.out.println("글 삭제 처리.");
				
		productService.deleteService(product.getP_pno());
			
		return "redirect:getProductList.p";
	}
	
}
