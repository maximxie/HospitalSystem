package com.xie.dao;

import com.xie.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PaitientDao {
    int addPaitient(Paitient paitient);//添加

    int deletePaitient(Integer paitientId);//删除

    int updatePaitient(Paitient paitient);//修改

    Paitient findPaitientById(Integer paitientId);//根据药物id号查信息

    List<Paitient> getAll();//获取所有药物信息

    List<Paitient> findPP(Personnel personnel); //查询指定医生诊断的病人

    //查询
    int totalCount(@Param("paitientId") String paitientId, @Param("paitientName") String paitientName,@Param("paitientGender") String paitientGender);
    //获取列表
    List<Paitient> getPotionList(@Param("paitientId") String paitientId, @Param("paitientName") String paitientName,@Param("paitientGender") String paitientGender ,@Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
