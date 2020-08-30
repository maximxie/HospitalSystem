package com.xie.pojo;

import java.util.List;

public class Personnel {
    private Integer empId;
    private String empNo;
    private String empName;
    private String empDeptId;
    private String empDuty;
    private String empXl;
    private String empGender;
    private String empBirthday;
    private String empHometown;
    private String empCountry;
    private String empNation;
    private String empIdCard;
    private String empMarriage;
    private String empHealth;
    private String empStartWork;
    private String empState;
    private String empHomeAddress;
    private String empTeleNo;
    private String empEmail;
    private String empJobId;
    private List<Paitient> paitients;

    public Personnel() {
    }

    public Personnel(Integer empId, String empNo, String empName, String empDeptId, String empDuty, String empXl, String empGender, String empBirthday, String empHometown, String empCountry, String empNation, String empIdCard, String empMarriage, String empHealth, String empStartWork, String empState, String empHomeAddress, String empTeleNo, String empEmail, String empJobId, List<Paitient> paitients) {
        this.empId = empId;
        this.empNo = empNo;
        this.empName = empName;
        this.empDeptId = empDeptId;
        this.empDuty = empDuty;
        this.empXl = empXl;
        this.empGender = empGender;
        this.empBirthday = empBirthday;
        this.empHometown = empHometown;
        this.empCountry = empCountry;
        this.empNation = empNation;
        this.empIdCard = empIdCard;
        this.empMarriage = empMarriage;
        this.empHealth = empHealth;
        this.empStartWork = empStartWork;
        this.empState = empState;
        this.empHomeAddress = empHomeAddress;
        this.empTeleNo = empTeleNo;
        this.empEmail = empEmail;
        this.empJobId = empJobId;
        this.paitients = paitients;
    }

    public Personnel(Integer empId, String empNo, String empName, String empDeptId, String empDuty, String empXl, String empGender, String empBirthday, String empHometown, String empCountry, String empNation, String empIdCard, String empMarriage, String empHealth, String empStartWork, String empState, String empHomeAddress, String empTeleNo, String empEmail, String empJobId) {
        this.empId = empId;
        this.empNo = empNo;
        this.empName = empName;
        this.empDeptId = empDeptId;
        this.empDuty = empDuty;
        this.empXl = empXl;
        this.empGender = empGender;
        this.empBirthday = empBirthday;
        this.empHometown = empHometown;
        this.empCountry = empCountry;
        this.empNation = empNation;
        this.empIdCard = empIdCard;
        this.empMarriage = empMarriage;
        this.empHealth = empHealth;
        this.empStartWork = empStartWork;
        this.empState = empState;
        this.empHomeAddress = empHomeAddress;
        this.empTeleNo = empTeleNo;
        this.empEmail = empEmail;
        this.empJobId = empJobId;
    }

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getEmpNo() {
        return empNo;
    }

    public void setEmpNo(String empNo) {
        this.empNo = empNo;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmpDeptId() {
        return empDeptId;
    }

    public void setEmpDeptId(String empDeptId) {
        this.empDeptId = empDeptId;
    }

    public String getEmpDuty() {
        return empDuty;
    }

    public void setEmpDuty(String empDuty) {
        this.empDuty = empDuty;
    }

    public String getEmpXl() {
        return empXl;
    }

    public void setEmpXl(String empXl) {
        this.empXl = empXl;
    }

    public String getEmpGender() {
        return empGender;
    }

    public void setEmpGender(String empGender) {
        this.empGender = empGender;
    }

    public String getEmpBirthday() {
        return empBirthday;
    }

    public void setEmpBirthday(String empBirthday) {
        this.empBirthday = empBirthday;
    }

    public String getEmpHometown() {
        return empHometown;
    }

    public void setEmpHometown(String empHometown) {
        this.empHometown = empHometown;
    }

    public String getEmpCountry() {
        return empCountry;
    }

    public void setEmpCountry(String empCountry) {
        this.empCountry = empCountry;
    }

    public String getEmpNation() {
        return empNation;
    }

    public void setEmpNation(String empNation) {
        this.empNation = empNation;
    }

    public String getEmpIdCard() {
        return empIdCard;
    }

    public void setEmpIdCard(String empIdCard) {
        this.empIdCard = empIdCard;
    }

    public String getEmpMarriage() {
        return empMarriage;
    }

    public void setEmpMarriage(String empMarriage) {
        this.empMarriage = empMarriage;
    }

    public String getEmpHealth() {
        return empHealth;
    }

    public void setEmpHealth(String empHealth) {
        this.empHealth = empHealth;
    }

    public String getEmpStartWork() {
        return empStartWork;
    }

    public void setEmpStartWork(String empStartWork) {
        this.empStartWork = empStartWork;
    }

    public String getEmpState() {
        return empState;
    }

    public void setEmpState(String empState) {
        this.empState = empState;
    }

    public String getEmpHomeAddress() {
        return empHomeAddress;
    }

    public void setEmpHomeAddress(String empHomeAddress) {
        this.empHomeAddress = empHomeAddress;
    }

    public String getEmpTeleNo() {
        return empTeleNo;
    }

    public void setEmpTeleNo(String empTeleNo) {
        this.empTeleNo = empTeleNo;
    }

    public String getEmpEmail() {
        return empEmail;
    }

    public void setEmpEmail(String empEmail) {
        this.empEmail = empEmail;
    }

    public String getEmpJobId() {
        return empJobId;
    }

    public void setEmpJobId(String empJobId) {
        this.empJobId = empJobId;
    }

    public List<Paitient> getPaitients() {
        return paitients;
    }

    public void setPaitients(List<Paitient> paitients) {
        this.paitients = paitients;
    }

    @Override
    public String toString() {
        return "Personnel{" +
                "empId=" + empId +
                ", empNo='" + empNo + '\'' +
                ", empName='" + empName + '\'' +
                ", empDeptId='" + empDeptId + '\'' +
                ", empDuty='" + empDuty + '\'' +
                ", empXl='" + empXl + '\'' +
                ", empGender='" + empGender + '\'' +
                ", empBirthday='" + empBirthday + '\'' +
                ", empHometown='" + empHometown + '\'' +
                ", empCountry='" + empCountry + '\'' +
                ", empNation='" + empNation + '\'' +
                ", empIdCard='" + empIdCard + '\'' +
                ", empMarriage='" + empMarriage + '\'' +
                ", empHealth='" + empHealth + '\'' +
                ", empStartWork='" + empStartWork + '\'' +
                ", empState='" + empState + '\'' +
                ", empHomeAddress='" + empHomeAddress + '\'' +
                ", empTeleNo='" + empTeleNo + '\'' +
                ", empEmail='" + empEmail + '\'' +
                ", empJobId='" + empJobId + '\'' +
                ", paitients=" + paitients +
                '}';
    }
}
