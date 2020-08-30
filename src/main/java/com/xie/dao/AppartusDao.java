package com.xie.dao;

import com.xie.pojo.Appartus;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppartusDao {

    int addAppartus(Appartus appartus);//添加

    int deleteAppartus(Integer appartusId);//删除

    int updateAppartus(Appartus appartus);//修改

    Appartus findAppartusById(Integer appartusId);//根据仪器id号查信息

    List<Appartus> getAll();//获取所有仪器信息

    //查询
    int totalCount(@Param("appartusNo") String appartusNo, @Param("appartusName") String appartusName);
    //获取用户列表
    List<Appartus> getTmsList(@Param("appartusNo") String appartusNo, @Param("appartusName") String appartusName, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
