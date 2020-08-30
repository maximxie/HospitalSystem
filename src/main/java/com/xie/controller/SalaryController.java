package com.xie.controller;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Potion;
import com.xie.pojo.Salary;
import com.xie.service.SalaryService;
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
public class SalaryController {
    @Autowired
    private SalaryService salaryService;

    /**
     * 分页查询
     */
    @RequestMapping("/findSalary")
    public String findSalary(String salaryNo, String salaryName,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Salary> sa = salaryService.findPageInfo(salaryNo,salaryName, pageIndex,pageSize);
        model.addAttribute("sa",sa);
        session.setAttribute("u",salaryNo);
        session.setAttribute("t",salaryName);
        return "salary_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addSalary" ,method = RequestMethod.POST)
    @ResponseBody
    public String addSalary(@RequestBody Salary salary) {
        int a = salaryService.addSalary(salary);
        return "salary_list";
    }


    /**
     * 修改仪器信息
     */
    @RequestMapping( value = "/updateSalary", method = RequestMethod.POST)
    public String updateSalary(Salary salary) {
        int a = salaryService.updateSalary(salary);
        return "redirect:/findSalary";
    }

    /**
     * 根据Id搜索;
     */
    @RequestMapping("/findSalaryById")
    public String findSalaryById(Integer salaryId, HttpSession session) {
        Salary sa2= salaryService.findSalaryById(salaryId);
        session.setAttribute("sa2",sa2);
        return "salary_edit";
    }



    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportSalarylist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Salary> exportPotion(){
        List<Salary> salary = salaryService.getAll();
        return salary;
    }
}
