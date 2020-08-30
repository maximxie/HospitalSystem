package com.xie.service.Impl;

import com.xie.dao.AppartusDao;
import com.xie.pojo.Appartus;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Tms;
import com.xie.service.AppartusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("appartusService")
public class AppartusServiceImpl implements AppartusService {
    @Autowired
    private AppartusDao appartusDao;

    public int addAppartus(Appartus appartus) {
        return appartusDao.addAppartus(appartus);
    }

    public int deleteAppartus(Integer appartusId) {
        return appartusDao.deleteAppartus(appartusId);
    }

    public int updateAppartus(Appartus appartus) {
        return appartusDao.updateAppartus(appartus);
    }

    public Appartus findAppartusById(Integer appartusId) {
        return appartusDao.findAppartusById(appartusId);
    }

    public List<Appartus> getAll() {
        return appartusDao.getAll();
    }

    public PageInfo<Appartus> findPageInfo(String appartusNo, String appartusName, Integer pageIndex, Integer pageSize) {
        PageInfo<Appartus> pi = new PageInfo<Appartus>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = appartusDao.totalCount(appartusNo,appartusName);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示管理员信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Appartus> appartusList = appartusDao.getTmsList(appartusNo,appartusName,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(appartusList);
        }
        return pi;
    }
}
