package com.xie.controller;

import com.xie.pojo.*;
import com.xie.service.PaitientService;
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
public class PaitientController {
    @Autowired
    private PaitientService paitientService;

    /**
     * 分页查询
     */
    @RequestMapping("/findPaitient")
    public String findPaitient(String paitientId, String paitientName,String paitientGender,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Paitient> pa = paitientService.findPageInfo(paitientId,paitientName,paitientGender, pageIndex,pageSize);
        model.addAttribute("pa",pa);
        session.setAttribute("u",paitientId);
        session.setAttribute("t",paitientName);
        session.setAttribute("g",paitientGender);
        return "paitient_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addPaitient" ,method = RequestMethod.POST)
    @ResponseBody
    public String addPaitient(@RequestBody Paitient paitient) {
        int a = paitientService.addPaitient(paitient);
        return "paitient_list";
    }

    /**
     * 删除仪器信息
     */
    @RequestMapping( "/deletePaitient")
    @ResponseBody
    public String deletePaitient(Integer paitientId) {
        int a = paitientService.deletePaitient(paitientId);
        return "paitient_list";
    }


    /**
     * 修改仪器信息
     */
    @RequestMapping( value = "/updatePaitient", method = RequestMethod.POST)
    public String updatePaitient(Paitient paitient) {
        int a = paitientService.updatePaitient(paitient);
        return "redirect:/findPaitient";
    }

    /**
     * 根据管理员Id搜索;将请求数据a_id写入参数a_id
     */
    @RequestMapping("/findPaitientById")
    public String findPaitientById(Integer paitientId, HttpSession session) {
        Paitient pa2= paitientService.findPaitientById(paitientId);
        session.setAttribute("pa2",pa2);
        return "paitient_edit";
    }



    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportPaitientlist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Paitient> exportPotion(){
        List<Paitient> paitients = paitientService.getAll();
        return paitients;
    }

    /**
     * 部门人员信息查询
     */
    @RequestMapping(value = "/findPP")
    public String findPP(Personnel personnel, Model model) {
        List<Paitient> paitients = paitientService.findPP(personnel);
        model.addAttribute("pas",paitients);
        return "PP_list";
    }
}
