package com.xie.pojo;

public class Salary {
    private Integer salaryId;
    private String salaryNo;
    private String salaryName;
    private String salaryMoney;

    public Salary() {
    }

    public Salary(Integer salaryId, String salaryNo, String salaryName, String salaryMoney) {
        this.salaryId = salaryId;
        this.salaryNo = salaryNo;
        this.salaryName = salaryName;
        this.salaryMoney = salaryMoney;
    }

    public Integer getSalaryId() {
        return salaryId;
    }

    public void setSalaryId(Integer salaryId) {
        this.salaryId = salaryId;
    }

    public String getSalaryNo() {
        return salaryNo;
    }

    public void setSalaryNo(String salaryNo) {
        this.salaryNo = salaryNo;
    }

    public String getSalaryMoney() {
        return salaryMoney;
    }

    public void setSalaryMoney(String salaryMoney) {
        this.salaryMoney = salaryMoney;
    }

    public String getSalaryName() {
        return salaryName;
    }

    public void setSalaryName(String salaryName) {
        this.salaryName = salaryName;
    }

    @Override
    public String toString() {
        return "Salary{" +
                "salaryId=" + salaryId +
                ", salaryNo='" + salaryNo + '\'' +
                ", salaryName='" + salaryName + '\'' +
                ", salaryMoney='" + salaryMoney + '\'' +
                '}';
    }
}
