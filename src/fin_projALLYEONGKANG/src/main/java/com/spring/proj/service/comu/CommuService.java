package com.spring.proj.service.comu;

import java.util.List;

import com.spring.proj.domain.comu.CommunityVO;

public interface CommuService {

   public void insertService(CommunityVO vo);
   public CommunityVO getService(Integer cm_bdno);
   public List<CommunityVO> getServiceList(CommunityVO vo);
   public void updateService(CommunityVO vo);
   public void deleteService(Integer cm_bdno);
   
   
}