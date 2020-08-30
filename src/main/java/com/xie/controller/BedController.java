package com.xie.controller;

import com.xie.pojo.Bed;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Room;
import com.xie.service.BedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BedController {
    @Autowired
    private BedService bedService;

    /**
     * 分页查询
     */
    @RequestMapping("/findBed")
    public String findBed(String bedNo, String bedRoomId,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Bed> be = bedService.findPageInfo(bedNo,bedRoomId, pageIndex,pageSize);
        model.addAttribute("be",be);
        session.setAttribute("u",bedNo);
        session.setAttribute("t",bedRoomId);
        return "bed_list";
    }

    /**
     * 添加病床信息
     */
    @RequestMapping(value = "/addBed" ,method = RequestMethod.POST)
    @ResponseBody
    public String addBed(@RequestBody Bed bed) {
        int a = bedService.addBed(bed);
        return "bed_list";
    }


    /**
     * 修改信息
     */
    @RequestMapping( value = "/updateBed", method = RequestMethod.POST)
    public String updateBed(Bed bed) {
        int a = bedService.updateBed(bed);
        return "redirect:/findBed";
    }

    /**
     * 根据Id搜索;
     */
    @RequestMapping("/findBedById")
    public String findBedById(Integer bedId, HttpSession session) {
        Bed be2= bedService.findBedById(bedId);
        session.setAttribute("be2",be2);
        return "bed_edit";
    }



    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportBedlist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Bed> exportBedlist(){
        List<Bed> beds = bedService.getAll();
        return beds;
    }


    /**
     * 部门人员信息查询
     */
    @RequestMapping(value = "/findRoomT")
    public String findRoomT(Room room, Model model) {
        List<Bed> beds = bedService.findRoomT(room);
        model.addAttribute("beds",beds);
        return "roomT_list";
    }
}
