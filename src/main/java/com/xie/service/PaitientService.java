package com.xie.service;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Paitient;
import com.xie.pojo.Personnel;

import java.util.List;

public interface PaitientService {
    int addPaitient(Paitient paitient);//添加

    int deletePaitient(Integer paitientId);//删除

    int updatePaitient(Paitient paitient);//修改

    Paitient findPaitientById(Integer paitientId);//根据药物id号查信息

    List<Paitient> getAll();//获取所有药物信息

    List<Paitient> findPP(Personnel personnel); //查询指定医生诊断的病人

    //分页查询
    PageInfo<Paitient> findPageInfo(String paitientId,String paitientName,String paitientGender, Integer pageIndex, Integer pageSize);
}
