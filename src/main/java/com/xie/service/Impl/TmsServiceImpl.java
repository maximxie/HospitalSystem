package com.xie.service.Impl;

import com.xie.dao.TmsDao;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Tms;
import com.xie.service.TmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("tmsService")
//@Transactional
public class TmsServiceImpl implements TmsService {
    @Autowired
    private TmsDao tmsDao;

    public void setTmsDao(TmsDao tmsDao) {
        this.tmsDao = tmsDao;
    }

    public Tms findTms(Tms tms) {
        return tmsDao.findTms(tms);
    }

    public int addTms(Tms tms) {
        return tmsDao.addTms(tms);
    }

    public int deleteTms(Integer tmId) {
        return tmsDao.deleteTms(tmId);
    }

    public int updateTms(Tms tms) {
        return tmsDao.updateTms(tms);
    }

    public Tms findTmsById(Integer tmId) {
        return tmsDao.findTmsById(tmId);
    }

    public List<Tms> getAll() {
        return tmsDao.getAll();
    }


    public PageInfo<Tms> findPageInfo(String tmsUser, String tmsName, Integer pageIndex, Integer pageSize) {
        PageInfo<Tms> pi = new PageInfo<Tms>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = tmsDao.totalCount(tmsUser,tmsName);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示管理员信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Tms> adminList = tmsDao.getTmsList(tmsUser,tmsName,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(adminList);
        }
        return pi;
    }
}
