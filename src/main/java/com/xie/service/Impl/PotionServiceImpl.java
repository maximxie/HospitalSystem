package com.xie.service.Impl;

import com.xie.dao.PotionDao;
import com.xie.pojo.Appartus;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Potion;
import com.xie.service.PotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("potionService")
public class PotionServiceImpl implements PotionService {
    @Autowired
    private PotionDao potionDao;

    public int addPotion(Potion potion) {
        return potionDao.addPotion(potion);
    }

    public int deletePotion(Integer potionId) {
        return potionDao.deletePotion(potionId);
    }

    public int updatePotion(Potion potion) {
        return potionDao.updatePotion(potion);
    }

    public Potion findPotionById(Integer potionId) {
        return potionDao.findPotionById(potionId);
    }

    public List<Potion> getAll() {
        return potionDao.getAll();
    }

    public PageInfo<Potion> findPageInfo(String potionNo, String potionName, Integer pageIndex, Integer pageSize) {
        PageInfo<Potion> pi = new PageInfo<Potion>();
        pi.setPageIndex(pageIndex);
        pi.setPageSize(pageSize);
        //获取总条数
        Integer totalCount = potionDao.totalCount(potionNo,potionName);
        if (totalCount>0){
            pi.setTotalCount(totalCount);
            //每一页显示管理员信息数
            //currentPage = (pageIndex-1)*pageSize  当前页码数减1*最大条数=开始行数
            List<Potion> potionList = potionDao.getPotionList(potionNo,potionName,
                    (pi.getPageIndex()-1)*pi.getPageSize(),pi.getPageSize());
            pi.setList(potionList);
        }
        return pi;
    }
}
