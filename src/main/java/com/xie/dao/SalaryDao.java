package com.xie.dao;

import com.xie.pojo.Potion;
import com.xie.pojo.Salary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SalaryDao {
    int addSalary(Salary salary);//添加

//    int deleteSalary(Integer salaryId);//删除

    int updateSalary(Salary salary);//修改

    Salary findSalaryById(Integer salaryId);//根据id号查工资

    List<Salary> getAll();//获取所有工资信息

    //查询
    int totalCount(@Param("salaryNo") String salaryNo, @Param("salaryName") String salaryName);
    //获取列表
    List<Salary> getSalaryList(@Param("salaryNo") String salaryNo, @Param("salaryName") String salaryName, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
