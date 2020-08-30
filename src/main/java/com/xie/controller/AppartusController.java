package com.xie.controller;

import com.xie.pojo.Appartus;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Tms;
import com.xie.service.AppartusService;
import com.xie.util.MD5Util;
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
public class AppartusController {
    @Autowired
    private AppartusService appartusService;

    /**
     * 分页查询
     */
    @RequestMapping("/findAppartus")
    public String findAppartus(String appartusNo, String appartusName,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Appartus> ap = appartusService.findPageInfo(appartusNo,appartusName, pageIndex,pageSize);
        model.addAttribute("ap",ap);
        session.setAttribute("u",appartusNo);
        session.setAttribute("t",appartusName);
        return "appartus_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addAppartus" ,method = RequestMethod.POST)
    @ResponseBody
    public String addAppartus(@RequestBody Appartus appartus) {
        int a = appartusService.addAppartus(appartus);
        return "admin_list";
    }


    /**
     * 删除仪器信息
     */
    @RequestMapping( "/deleteAppartus")
    @ResponseBody
    public String deleteAdmin(Integer appartusId) {
        int a = appartusService.deleteAppartus(appartusId);
        return "appartus_list";
    }

    /**
     * 修改仪器信息
     */
    @RequestMapping( value = "/updateAppartus", method = RequestMethod.POST)
    public String updateAdmin(Appartus appartus) {
        int a = appartusService.updateAppartus(appartus);
        return "redirect:/findAppartus";
    }


    /**
     * 根据管理员Id搜索;将请求数据a_id写入参数a_id
     */
    @RequestMapping("/findAppartusById")
    public String findAppartusById(Integer appartusId, HttpSession session) {
        Appartus ap2= appartusService.findAppartusById(appartusId);
        session.setAttribute("ap2",ap2);
        return "appartus_edit";
    }


    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportAppartuslist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Appartus> exportAdmin(){
        List<Appartus> appartus = appartusService.getAll();
        return appartus;
    }
}
