package com.xie.service.Impl;

import com.xie.dao.PaitientDao;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Paitient;
import com.xie.pojo.Personnel;
import com.xie.pojo.Potion;
import com.xie.service.PaitientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("paitientService")
public class PaitientServiceImpl implements PaitientService {
    @Autowired
    private PaitientDao paitientDao;

    public int addPaitient(Paitient paitient) {
        return paitientDao.addPaitient(paitient);
    }

    public int deletePaitient(Integer paitientId) {
        return paitientDao.deletePaitient(paitientId);
    }

    public int updatePaitient(Paitient paitient) {
        return paitientDao.updatePaitient(paitient);
    }

    public Paitient findPaitientById(Integer paitientId) {
        return paitientDao.findPaitientById(paitientId);
    }

    public List<Paitient> getAll() {
        return paitientDao.getAll();
    }

    public List<Paitient> findPP(Personnel personnel) {
        return paitientDao.findPP(personnel);
    }

    public PageInfo<Paitient> findPageInfo(String paitientId, String paitientName, String paitientGender, Integer pageIndex, Integer pageSize) {
        PageInfo<Paitient> pi = new PageInfo<Paitient>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = paitientDao.totalCount(paitientId,paitientName,paitientGender);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示管理员信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Paitient> paitientList = paitientDao.getPotionList(paitientId,paitientName,paitientGender,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(paitientList);
        }
        return pi;
    }
}
