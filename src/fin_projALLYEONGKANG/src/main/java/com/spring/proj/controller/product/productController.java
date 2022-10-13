package com.spring.proj.controller.product;

import java.io.File;
import java.io.IOException;
import java.util.List;

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

import com.spring.proj.domain.product.ProductVO;
import com.spring.proj.service.product.ProductService;

@Controller
@SessionAttributes("product")
public class productController {
	
	@Autowired
	ProductService productService;

	
	@GetMapping("/insertProduct.do")
	public String productinsert() {
		return "product/insertProduct";
	}
	
	@PostMapping("/insertProduct.do")
	public String productinsert(ProductVO product, HttpSession session) throws IOException {
		String fileSaveFolder = session.getServletContext().getRealPath("/MemberUpload/");
		System.out.println("=>" + fileSaveFolder);
		
		MultipartFile uploadFile = product.getUploadFile();
		MultipartFile uploadFile2 = product.getUploadFile2();
		
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder+fileName));
			product.setP_pimg(fileName);
		}
		if(!uploadFile2.isEmpty()) {
			String fileName = uploadFile2.getOriginalFilename();
			uploadFile2.transferTo(new File(fileSaveFolder+fileName));
			product.setP_dimg(fileName);
		}
		
		productService.insertProductService(product);
		
		return "redirect:getProductList.do";
	}
	
	@RequestMapping(value = "/getProduct.do")
	public String getProduct(ProductVO product, Model model) {
		
		
		ProductVO vo = productService.getProductService(product.getP_pno());
		
		model.addAttribute("product", vo); // command 객체로 이용 가능하다.
		
		return "product/getProduct";
	}
	

	
	/*
	 * @RequestMapping(value = "/getProduct2.do") public String
	 * getProduct2(ProductVO product, Model model) {
	 * 
	 * 
	 * ProductVO vo = productService.getProductService(product.getP_pno());
	 * 
	 * model.addAttribute("product", vo); // command 객체로 이용 가능하다.
	 * 
	 * return "getProduct2"; }
	 */
	
	// 검색 조건 목록 설정
//	@ModelAttribute("conditionMap") // key 자리
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		
//		conditionMap.put("제목", "TITLE");
//		conditionMap.put("내용", "CONTENT");
//		
//		return conditionMap; // value 자리
//	}
	
	@RequestMapping(value = "/getProductList.do")
	public String getProductList(ProductVO vo, Model model) {

		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("e_no");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<ProductVO> list = productService.getProductServiceList(vo);
		
		model.addAttribute("productList", list);
		
		return "product/getProductList";
	}
	
	@RequestMapping(value = "/updateProductService.do")
	public String updateProductService(@ModelAttribute("product") ProductVO vo) {

		/* System.out.println(vo); */
		
		productService.updateProductService(vo);
		
		return "redirect:getProductList.do";
	}

	@RequestMapping(value = "/deleteProductService.do")
	public String deleteProductService(ProductVO product) {

				
		productService.deleteProductService(product.getP_pno());
			
		return "redirect:getProductList.do";
	}
	
}
