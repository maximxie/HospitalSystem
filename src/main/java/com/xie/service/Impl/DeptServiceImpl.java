package com.xie.service.Impl;

import com.xie.dao.DeptDao;
import com.xie.pojo.Dept;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Salary;
import com.xie.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("deptService")
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptDao deptDao;

    public int addDept(Dept dept) {
        return deptDao.addDept(dept);
    }

    public int updateDept(Dept dept) {
        return deptDao.updateDept(dept);
    }

    public Dept findDeptById(Integer deptId) {
        return deptDao.findDeptById(deptId);
    }

    public List<Dept> getAll() {
        return deptDao.getAll();
    }

    public List<Dept> findDeptPersonnel(Dept dept) {
        return deptDao.findDeptPersonnel(dept);
    }

    public PageInfo<Dept> findPageInfo(String deptNo, String deptName, Integer pageIndex, Integer pageSize) {
        PageInfo<Dept> pi = new PageInfo<Dept>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = deptDao.totalCount(deptNo,deptName);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示管理员信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Dept> deptList = deptDao.getSalaryList(deptNo,deptName,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(deptList);
        }
        return pi;
    }
}
