package com.xie.service.Impl;

import com.xie.dao.BedDao;
import com.xie.pojo.Bed;
import com.xie.pojo.Dept;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Room;
import com.xie.service.BedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("bedService")
public class BedServiceImpl implements BedService {
    @Autowired
    private BedDao bedDao;

    public int addBed(Bed bed) {
        return bedDao.addBed(bed);
    }

    public int updateBed(Bed bed) {
        return bedDao.updateBed(bed);
    }

    public Bed findBedById(Integer bedId) {
        return bedDao.findBedById(bedId);
    }

    public List<Bed> getAll() {
        return bedDao.getAll();
    }

    public List<Bed> findRoomT(Room room) {
        return bedDao.findRoomT(room);
    }


    public PageInfo<Bed> findPageInfo(String bedNo, String bedRoomId, Integer pageIndex, Integer pageSize) {
        PageInfo<Bed> pi = new PageInfo<Bed>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = bedDao.totalCount(bedNo,bedRoomId);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示管理员信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Bed> bedList = bedDao.getSalaryList(bedNo,bedRoomId,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(bedList);
        }
        return pi;
    }
}
