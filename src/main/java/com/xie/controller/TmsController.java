package com.xie.controller;

import com.xie.pojo.PageInfo;
import com.xie.pojo.Personnel;
import com.xie.pojo.Tms;
import com.xie.service.TmsService;
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
public class TmsController {
    @Autowired
    private TmsService tmsService;

    @RequestMapping(value = "/login")
    public String login(Tms tms, Model model, HttpSession session){
        // 通过账号和密码查询用户
        tms.setTmsPswd(MD5Util.MD5EncodeUtf8(tms.getTmsPswd()));
        Tms ad = tmsService.findTms(tms);
        if(ad!=null){
            session.setAttribute("ad", ad);
            return "homepage";
        }
        model.addAttribute("msg", "error");
        return "login";
    }

    /**
     * 退出登录
     */
    @RequestMapping(value = "/loginOut")
    public String loginOut(Tms tms, Model model, HttpSession session) {
        session.invalidate();
        return "login";

    }

    /**
     * 分页查询
     */
    @RequestMapping(value = "/findAdmin")
    public String findAdmin(String tmsUser, String tmsName,Integer pageIndex
            , Integer pageSize, Model model,HttpSession session) {
        PageInfo<Tms> ai = tmsService.findPageInfo(tmsUser,tmsName, pageIndex,pageSize);
        model.addAttribute("ai",ai);
        session.setAttribute("u",tmsUser);
        session.setAttribute("t",tmsName);
        return "admin_list";
    }

    /**
     * 添加管理员信息
     */
    @RequestMapping(value = "/addAdmin" ,method = RequestMethod.POST)
    @ResponseBody
    public String addAdmin(@RequestBody Tms tms) {
        tms.setTmsPswd(MD5Util.MD5EncodeUtf8(tms.getTmsPswd()));
        int a = tmsService.addTms(tms);
        return "admin_list";
    }


    /**
     * 删除管理员信息
     */
    @RequestMapping( "/deleteAdmin")
    @ResponseBody
    public String deleteAdmin(Integer tmsId) {
        int a = tmsService.deleteTms(tmsId);
        return "admin_list";
    }

    /**
     * 导出Excel
     */
    @RequestMapping(value = "/exportadminlist" , method = RequestMethod.POST)
    @ResponseBody
    public List<Tms> exportAdmin(){
        List<Tms> admin = tmsService.getAll();
        return admin;
    }

    /**
     * 根据管理员Id搜索;
     */
    @RequestMapping( "/findAdminById")
    public String findAdminById( Integer tmId,HttpSession session) {
        Tms a= tmsService.findTmsById(tmId);
        session.setAttribute("a",a);
        return "admin_edit";
    }

    /**
     * 修改管理员信息
     */
    /**
     * 将提交数据写入Tms对象
     */
    @RequestMapping( value = "/updateAdmin", method = RequestMethod.POST)
    public String updateAdmin(Tms tms) {
        tms.setTmsPswd(MD5Util.MD5EncodeUtf8(tms.getTmsPswd()));
        int a = tmsService.updateTms(tms);
        return "redirect:/findAdmin";
    }

}
