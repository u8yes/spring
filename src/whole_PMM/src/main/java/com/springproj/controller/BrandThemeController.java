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

import com.springproj.biz.domain.BrandInfoVO;
import com.springproj.biz.domain.BrandThemeVO;
import com.springproj.biz.service.BrandThemeService;

@Controller
@SessionAttributes("brandTheme")	
public class BrandThemeController {
	
	@Autowired
	BrandThemeService brandThemeService;
	
	@GetMapping("/insertBrandTheme.bt")
	public String insertBrandTheme() {
		return "insertBrandTheme";
	}
	
	@PostMapping("/insertBrandTheme.bt")
	public String insertBrandTheme(BrandThemeVO brandTheme, HttpSession session) throws IOException{
		
		String fileSaveFolder = session.getServletContext().getRealPath("/brandThemeUpload/");
		
		MultipartFile uploadFile = brandTheme.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
			
			brandTheme.setBt_logo(fileName);
			
			System.out.println("fileName => " + fileName);
		}
		
		brandThemeService.insertService(brandTheme);
		return "redirect:getBrandThemeList.bt";
	}
	
	@RequestMapping("/getBrandTheme.bt")
	public String getBrandTheme(BrandThemeVO brandTheme, Model model) {
		BrandThemeVO bt = brandThemeService.getService(brandTheme.getBm_no());
		
		model.addAttribute("brandTheme", bt);
		
		return "getBrandTheme";
	}
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("bm번호", "BM_NO");
		conditionMap.put("bt번호", "BT_NO");
		
		return conditionMap;
	}
	
	@RequestMapping("/getBrandThemeList.bt")
	public String getBrandThemeList(BrandThemeVO bt, Model model) {
		
		if(bt.getSearchCondition() == null) {
			bt.setSearchCondition("BM_NO");
		}
		
		if(bt.getSearchKeyword() == null) {
			bt.setSearchKeyword("");
		}
		
		List<BrandThemeVO> list = brandThemeService.getServiceList(bt);
		
		model.addAttribute("brandThemeList", list);
		return "getBrandThemeList";
	}
	
	@PostMapping("/updateBrandTheme.bt")
	public String updateBrandTheme(BrandThemeVO brandTheme, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandThemeUpload/");
		
		MultipartFile uploadFile = brandTheme.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			System.out.println("updateBrandTheme Controller fileName =>"+fileName);
		}
		
		
		brandThemeService.updateService(brandTheme);
		System.out.println("update controller => "+brandTheme);
		return "redirect:getBrandThemeList.bt";
	}
	
	@RequestMapping("/deleteBrandTheme.bt")
	public String deleteBrandTheme(BrandThemeVO brandTheme) {
		 
		brandThemeService.deleteService(brandTheme.getBm_no());
		
		return "redirect:getBrandThemeList.bt";
	}
}
