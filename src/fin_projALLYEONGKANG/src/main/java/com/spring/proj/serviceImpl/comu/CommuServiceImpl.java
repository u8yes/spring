package com.spring.proj.serviceImpl.comu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brand.comu.CommuDAOMybatis;
import com.spring.proj.domain.comu.CommunityVO;
import com.spring.proj.service.comu.CommuService;

@Service("commuService")
public class CommuServiceImpl implements CommuService {

   @Autowired
   private CommuDAOMybatis dao;
   
   @Override
   public void insertService(CommunityVO vo) {
      dao.insertCommu(vo);
   }

   @Override
   public CommunityVO getService(Integer cm_bdno) {
      CommunityVO commu = dao.getCommu(cm_bdno);
      return commu;
   }

   @Override
   public List<CommunityVO> getServiceList(CommunityVO vo) {
      return dao.getCommuList(vo);
   }

   @Override
   public void updateService(CommunityVO vo) {
      dao.updateCommu(vo);
   }

   @Override
   public void deleteService(Integer cm_bdno) {
      dao.deleteCommu(cm_bdno);
   }
   
   

}