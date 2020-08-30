package com.xie.service;

import com.xie.pojo.Dept;
import com.xie.pojo.PageInfo;

import java.util.List;

public interface DeptService {
    int addDept(Dept dept);//添加

//  int deleteDept(Integer deptId);//删除

    int updateDept(Dept dept);//修改

    Dept findDeptById(Integer deptId);//根据id号查部门

    List<Dept> getAll();//获取所有部门信息

    List<Dept> findDeptPersonnel(Dept dept);//查询班级人员信息

    //分页查询
    PageInfo<Dept> findPageInfo(String deptNo, String deptName, Integer pageIndex, Integer pageSize);
}
