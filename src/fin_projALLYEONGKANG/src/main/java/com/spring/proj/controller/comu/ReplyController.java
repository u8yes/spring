package com.spring.proj.controller.comu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.comu.CommunityVO;
import com.spring.proj.domain.comu.ReplyVO;
import com.spring.proj.service.comu.ReplyService;

@Controller
@SessionAttributes("rp")
public class ReplyController {
	
	@Autowired
	ReplyService rpReply;

	@PostMapping("/insertRp.rp")
	public String insertReply(ReplyVO rp, CommunityVO com, Model model) {
		
		rpReply.insertService(rp);
		
		List<ReplyVO> list = rpReply.getListService(rp);
		model.addAttribute("rpList", list);
		
		
		return "redirect:getCommu.zo?cm_bdno="+com.getCm_bdno();
	}
	
	@RequestMapping(value = "/getRpList.rp")
	public String getReplyList(ReplyVO rp, Model model) {
		System.out.println("==> getReplyList() 호출.");
		
		List<ReplyVO> list = rpReply.getListService(rp);
		
//		System.out.println(rp);
		
		model.addAttribute("rpList", list);
		
		
		System.out.println("==> getReplyList() 호출.");
		for(ReplyVO reply : list) {
			System.out.println(reply.getR_writer());
			System.out.println(reply.getR_date());
		}
		
		
		return "redirect:getCommu.zo?cm_bdno="+rp.getCm_bdno();
	}
	
	//수정을 빙자한 삭제
	@RequestMapping(value = "/updateRp.rp", method = RequestMethod.POST)
	public String deleteRpProc(ReplyVO rp, CommunityVO com) {
	
		System.out.println(rp);
		
		rpReply.updateService(rp);
		
		return "redirect:getCommu.zo?cm_bdno="+com.getCm_bdno();
	}
	
}
