package com.xie.service;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Personnel;

import java.util.List;

public interface PersonnelService {

    int addPersonnel(Personnel personnel);//添加

    int deletePersonnel(Integer empId);//删除

    int updatePersonnel(Personnel personnel);//修改

    Personnel findPersonnelById(Integer empId);//根据药物id号查信息

    List<Personnel> getAll();//获取所有药物信息

    //分页查询
    PageInfo<Personnel> findPageInfo(String empNo, String empName, Integer pageIndex, Integer pageSize);
}
