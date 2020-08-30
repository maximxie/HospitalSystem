package com.xie.controller;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Personnel;
import com.xie.pojo.Potion;
import com.xie.service.PersonnelService;
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
public class PersonnelController {
    @Autowired
    private PersonnelService personnelService;

    /**
     * 分页查询
     */
    @RequestMapping("/findPersonnel")
    public String findPersonnel(String empNo, String empName,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Personnel> pe = personnelService.findPageInfo(empNo,empName, pageIndex,pageSize);
        model.addAttribute("pe",pe);
        session.setAttribute("u",empNo);
        session.setAttribute("t",empName);
        return "personnel_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addPersonnel" ,method = RequestMethod.POST)
    @ResponseBody
    public String addPersonnel(@RequestBody Personnel personnel) {
        int a = personnelService.addPersonnel(personnel);
        return "personnel_list";
    }

    /**
     * 删除仪器信息
     */
    @RequestMapping( "/deletePersonnel")
    @ResponseBody
    public String deletePersonnel(Integer empId) {
        int a = personnelService.deletePersonnel(empId);
        return "personnel_list";
    }


    /**
     * 修改仪器信息
     */
    @RequestMapping( value = "/updatePersonnel", method = RequestMethod.POST)
    public String updatePersonnel(Personnel personnel) {
        int a = personnelService.updatePersonnel(personnel);
        return "redirect:/findPersonnel";
    }

    /**
     * 根据管理员Id搜索;将请求数据a_id写入参数a_id
     */
    @RequestMapping("/findPersonnelById")
    public String findPersonnelById(Integer empId, HttpSession session) {
        Personnel pe2= personnelService.findPersonnelById(empId);
        session.setAttribute("pe2",pe2);
        return "personnel_edit";
    }



    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportPersonnel" , method = RequestMethod.POST)
    @ResponseBody
    public List<Personnel> exportPersonnel(){
        List<Personnel> personnel = personnelService.getAll();
        return personnel;
    }
}
