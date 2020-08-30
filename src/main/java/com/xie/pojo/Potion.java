package com.xie.pojo;

public class Potion {
    private Integer potionId;
    private String potionNo;
    private String potionName;
    private String potionPrice;
    private String potionQuantity;
    private String potionRen;

    public Potion() {
    }

    public Potion(Integer potionId, String potionNo, String potionName, String potionPrice, String potionQuantity, String potionRen) {
        this.potionId = potionId;
        this.potionNo = potionNo;
        this.potionName = potionName;
        this.potionPrice = potionPrice;
        this.potionQuantity = potionQuantity;
        this.potionRen = potionRen;
    }

    public Integer getPotionId() {
        return potionId;
    }

    public void setPotionId(Integer potionId) {
        this.potionId = potionId;
    }

    public String getPotionNo() {
        return potionNo;
    }

    public void setPotionNo(String potionNo) {
        this.potionNo = potionNo;
    }

    public String getPotionName() {
        return potionName;
    }

    public void setPotionName(String potionName) {
        this.potionName = potionName;
    }

    public String getPotionPrice() {
        return potionPrice;
    }

    public void setPotionPrice(String potionPrice) {
        this.potionPrice = potionPrice;
    }

    public String getPotionQuantity() {
        return potionQuantity;
    }

    public void setPotionQuantity(String potionQuantity) {
        this.potionQuantity = potionQuantity;
    }

    public String getPotionRen() {
        return potionRen;
    }

    public void setPotionRen(String potionRen) {
        this.potionRen = potionRen;
    }

    @Override
    public String toString() {
        return "Potion{" +
                "potionId='" + potionId + '\'' +
                ", potionNo='" + potionNo + '\'' +
                ", potionName='" + potionName + '\'' +
                ", potionPrice='" + potionPrice + '\'' +
                ", potionQuantity='" + potionQuantity + '\'' +
                ", potionRen='" + potionRen + '\'' +
                '}';
    }
}
