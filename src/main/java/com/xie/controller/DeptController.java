package com.xie.controller;

import com.xie.pojo.Dept;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Salary;
import com.xie.service.DeptService;
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
public class DeptController {
    @Autowired
    private DeptService deptService;

    /**
     * 分页查询
     */
    @RequestMapping("/findDept")
    public String findDept(String deptNo, String deptName,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Dept> de = deptService.findPageInfo(deptNo,deptName, pageIndex,pageSize);
        model.addAttribute("de",de);
        session.setAttribute("u",deptNo);
        session.setAttribute("t",deptName);
        return "Dept_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addDept" ,method = RequestMethod.POST)
    @ResponseBody
    public String addDept(@RequestBody Dept dept) {
        int a = deptService.addDept(dept);
        return "Dept_list";
    }


    /**
     * 修改信息
     */
    @RequestMapping( value = "/updateDept", method = RequestMethod.POST)
    public String updateDept(Dept dept) {
        int a = deptService.updateDept(dept);
        return "redirect:/findDept";
    }

    /**
     * 根据Id搜索;
     */
    @RequestMapping("/findDeptById")
    public String findDeptById(Integer deptId, HttpSession session) {
        Dept de2= deptService.findDeptById(deptId);
        session.setAttribute("de2",de2);
        return "Dept_edit";
    }



    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportDeptlist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Dept> exportDept(){
        List<Dept> depts = deptService.getAll();
        return depts;
    }


    /**
     * 部门人员信息查询
     */
    @RequestMapping(value = "/findDeptPersonnel")
    public String findClassStudent(Dept dept,Model model, HttpSession session) {
        List<Dept> dep = deptService.findDeptPersonnel(dept);
        model.addAttribute("dep",dep);
        return "dept_Personnellist";
    }

}
