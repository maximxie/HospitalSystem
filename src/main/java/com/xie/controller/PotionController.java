package com.xie.controller;

import com.xie.pojo.Appartus;
import com.xie.pojo.PageInfo;
import com.xie.pojo.Potion;
import com.xie.service.PotionService;
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
public class PotionController {
    @Autowired
    private PotionService potionService;

    /**
     * 分页查询
     */
    @RequestMapping("/findPotion")
    public String findPotion(String potionNo, String potionName,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session){
        PageInfo<Potion> po = potionService.findPageInfo(potionNo,potionName, pageIndex,pageSize);
        model.addAttribute("po",po);
        session.setAttribute("u",potionNo);
        session.setAttribute("t",potionName);
        return "potion_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addPotion" ,method = RequestMethod.POST)
    @ResponseBody
    public String addPotion(@RequestBody Potion potion) {
        int a = potionService.addPotion(potion);
        return "potion_list";
    }

    /**
     * 删除仪器信息
     */
    @RequestMapping( "/deletePotion")
    @ResponseBody
    public String deletePotion(Integer potionId) {
        int a = potionService.deletePotion(potionId);
        return "potion_list";
    }


    /**
     * 修改仪器信息
     */
    @RequestMapping( value = "/updatePotion", method = RequestMethod.POST)
    public String updatePotion(Potion potion) {
        int a = potionService.updatePotion(potion);
        return "redirect:/findPotion";
    }

    /**
     * 根据管理员Id搜索;将请求数据a_id写入参数a_id
     */
    @RequestMapping("/findPotionById")
    public String findPotionById(Integer potionId, HttpSession session) {
        Potion po2= potionService.findPotionById(potionId);
        session.setAttribute("po2",po2);
        return "potion_edit";
    }



    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportPotionlist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Potion> exportPotion(){
        List<Potion> potions = potionService.getAll();
        return potions;
    }
}
