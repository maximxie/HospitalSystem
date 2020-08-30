package com.xie.service;

import com.xie.pojo.Appartus;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Tms;

import java.util.List;

public interface AppartusService {
    int addAppartus(Appartus appartus);//添加

    int deleteAppartus(Integer appartusId);//删除

    int updateAppartus(Appartus appartus);//修改

    Appartus findAppartusById(Integer appartusId);//根据仪器id号查信息

    List<Appartus> getAll();//获取所有仪器信息

    //分页查询
    PageInfo<Appartus> findPageInfo(String appartusNo, String appartusName, Integer pageIndex, Integer pageSize);
}
