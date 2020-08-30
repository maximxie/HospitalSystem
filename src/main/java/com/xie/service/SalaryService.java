package com.xie.service;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Potion;
import com.xie.pojo.Salary;

import java.util.List;

public interface SalaryService {
    int addSalary(Salary salary);//添加

//    int deleteSalary(Integer salaryId);//删除

    int updateSalary(Salary salary);//修改

    Salary findSalaryById(Integer salaryId);//根据id号查工资

    List<Salary> getAll();//获取所有工资信息

    //分页查询
    PageInfo<Salary> findPageInfo(String salaryNo, String salaryName, Integer pageIndex, Integer pageSize);
}
