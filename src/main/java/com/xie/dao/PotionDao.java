package com.xie.dao;

import com.xie.pojo.Appartus;
import com.xie.pojo.Potion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PotionDao {
    int addPotion(Potion potion);//添加

    int deletePotion(Integer potionId);//删除

    int updatePotion(Potion potion);//修改

    Potion findPotionById(Integer potionId);//根据药物id号查信息

    List<Potion> getAll();//获取所有药物信息

    //查询
    int totalCount(@Param("potionNo") String potionNo, @Param("potionName") String potionName);
    //获取列表
    List<Potion> getPotionList(@Param("potionNo") String potionNo, @Param("potionName") String potionName, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
