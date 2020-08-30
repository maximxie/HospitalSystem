package com.xie.pojo;

import java.util.List;

public class Dept {
    private Integer deptId;
    private String deptNo;
    private String deptName;
    private String deptManager;
    private String deptViceManager;
    private List<Personnel> personnels;

    public Dept() {
    }

    public Dept(Integer deptId, String deptNo, String deptName, String deptManager, String deptViceManager, List<Personnel> personnels) {
        this.deptId = deptId;
        this.deptNo = deptNo;
        this.deptName = deptName;
        this.deptManager = deptManager;
        this.deptViceManager = deptViceManager;
        this.personnels = personnels;
    }

    public Dept(Integer deptId, String deptNo, String deptName, String deptManager, String deptViceManager) {
        this.deptId = deptId;
        this.deptNo = deptNo;
        this.deptName = deptName;
        this.deptManager = deptManager;
        this.deptViceManager = deptViceManager;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(String deptNo) {
        this.deptNo = deptNo;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptManager() {
        return deptManager;
    }

    public void setDeptManager(String deptManager) {
        this.deptManager = deptManager;
    }

    public String getDeptViceManager() {
        return deptViceManager;
    }

    public void setDeptViceManager(String deptViceManager) {
        this.deptViceManager = deptViceManager;
    }

    public List<Personnel> getPersonnels() {
        return personnels;
    }

    public void setPersonnels(List<Personnel> personnels) {
        this.personnels = personnels;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptId=" + deptId +
                ", deptNo='" + deptNo + '\'' +
                ", deptName='" + deptName + '\'' +
                ", deptManager='" + deptManager + '\'' +
                ", deptViceManager='" + deptViceManager + '\'' +
                ", personnels=" + personnels +
                '}';
    }
}
