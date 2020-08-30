package com.xie.dao;

import com.xie.pojo.Bed;
import com.xie.pojo.Dept;
import com.xie.pojo.Room;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BedDao {
    int addBed(Bed bed);//添加


    int updateBed(Bed bed);//修改

    Bed findBedById(Integer bedId);//根据id号查询

    List<Bed> getAll();//获取所有床位信息

    List<Bed> findRoomT(Room room); //查询指定房间里的病床、病人信息

    //查询
    int totalCount(@Param("bedNo") String bedNo, @Param("bedRoomId") String bedRoomId);
    //获取列表
    List<Bed> getSalaryList(@Param("bedNo") String bedNo, @Param("bedRoomId") String bedRoomId, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
