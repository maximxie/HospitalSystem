package com.xie.service;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Tms;

import java.util.List;

public interface TmsService {
    Tms findTms(Tms tms); //通过账号和密码查询Tms

    int addTms(Tms tms);//添加

    int deleteTms(Integer tmId);//删除

    int updateTms(Tms tms);//修改

    Tms findTmsById(Integer tmId);//根据员工号查信息

    List<Tms> getAll();//获取所有管理员信息

    //分页查询
    PageInfo<Tms> findPageInfo(String tmsUser, String tmsName, Integer pageIndex, Integer pageSize);
}
