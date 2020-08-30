package com.xie.pojo;

public class Appartus {
    private Integer appartusId;
    private String appartusNo;
    private String appartusName;
    private String appartusPrice;
    private String appartusQuantity;
    private String appartusRen;

    public Appartus() {
    }

    public Appartus(Integer appartusId, String appartusNo, String appartusName, String appartusPrice, String appartusQuantity, String appartusRen) {
        this.appartusId = appartusId;
        this.appartusNo = appartusNo;
        this.appartusName = appartusName;
        this.appartusPrice = appartusPrice;
        this.appartusQuantity = appartusQuantity;
        this.appartusRen = appartusRen;
    }

    public Integer getAppartusId() {
        return appartusId;
    }

    public void setAppartusId(Integer appartusId) {
        this.appartusId = appartusId;
    }

    public String getAppartusNo() {
        return appartusNo;
    }

    public void setAppartusNo(String appartusNo) {
        this.appartusNo = appartusNo;
    }

    public String getAppartusName() {
        return appartusName;
    }

    public void setAppartusName(String appartusName) {
        this.appartusName = appartusName;
    }

    public String getAppartusPrice() {
        return appartusPrice;
    }

    public void setAppartusPrice(String appartusPrice) {
        this.appartusPrice = appartusPrice;
    }

    public String getAppartusQuantity() {
        return appartusQuantity;
    }

    public void setAppartusQuantity(String appartusQuantity) {
        this.appartusQuantity = appartusQuantity;
    }

    public String getAppartusRen() {
        return appartusRen;
    }

    public void setAppartusRen(String appartusRen) {
        this.appartusRen = appartusRen;
    }

    @Override
    public String toString() {
        return "Appartus{" +
                "appartusId='" + appartusId + '\'' +
                ", appartusNo='" + appartusNo + '\'' +
                ", appartusName='" + appartusName + '\'' +
                ", appartusPrice='" + appartusPrice + '\'' +
                ", appartusQuantity='" + appartusQuantity + '\'' +
                ", appartusRen='" + appartusRen + '\'' +
                '}';
    }
}
