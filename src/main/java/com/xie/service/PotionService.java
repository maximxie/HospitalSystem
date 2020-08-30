package com.xie.service;

import com.xie.pojo.Appartus;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Potion;

import java.util.List;

public interface PotionService {
    int addPotion(Potion potion);//添加

    int deletePotion(Integer potionId);//删除

    int updatePotion(Potion potion);//修改

    Potion findPotionById(Integer potionId);//根据药物id号查信息

    List<Potion> getAll();//获取所有药物信息

    //分页查询
    PageInfo<Potion> findPageInfo(String potionNo, String potionName, Integer pageIndex, Integer pageSize);
}
