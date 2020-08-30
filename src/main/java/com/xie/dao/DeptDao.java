package com.xie.dao;

import com.xie.pojo.Dept;
import com.xie.pojo.Salary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeptDao {
    int addDept(Dept dept);//添加

//  int deleteDept(Integer deptId);//删除

    int updateDept(Dept dept);//修改

    Dept findDeptById(Integer deptId);//根据id号查部门

    List<Dept> getAll();//获取所有部门信息

    List<Dept> findDeptPersonnel(Dept dept);//查询班级人员信息

    //查询
    int totalCount(@Param("deptNo") String deptNo, @Param("deptName") String deptName);
    //获取列表
    List<Dept> getSalaryList(@Param("deptNo") String deptNo, @Param("deptName") String deptName, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
