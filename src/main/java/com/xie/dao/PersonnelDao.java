package com.xie.dao;

import com.xie.pojo.Personnel;
import com.xie.pojo.Potion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonnelDao {
    int addPersonnel(Personnel personnel);//添加

    int deletePersonnel(Integer empId);//删除

    int updatePersonnel(Personnel personnel);//修改

    Personnel findPersonnelById(Integer empId);//根据id号查信息

    List<Personnel> getAll();//获取所有人信息

    //查询
    int totalCount(@Param("empNo") String empNo, @Param("empName") String empName);
    //获取列表
    List<Personnel> getPersonnelList(@Param("empNo") String empNo, @Param("empName") String empName, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
