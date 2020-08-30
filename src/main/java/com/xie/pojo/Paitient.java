package com.xie.pojo;

public class Paitient {
    private Integer paitientId;
    private String paitientName;
    private String paitientGender;
    private String paitientDateStart;
    private String paitientDept;
    private String paitientState;
    private String paitientDoc;
    private String paitientRoom;
    private String paitientBed;
    private Personnel personnel;

    public Paitient() {
    }

    public Paitient(Integer paitientId, String paitientName, String paitientGender, String paitientDateStart, String paitientDept, String paitientState, String paitientDoc, String paitientRoom, String paitientBed) {
        this.paitientId = paitientId;
        this.paitientName = paitientName;
        this.paitientGender = paitientGender;
        this.paitientDateStart = paitientDateStart;
        this.paitientDept = paitientDept;
        this.paitientState = paitientState;
        this.paitientDoc = paitientDoc;
        this.paitientRoom = paitientRoom;
        this.paitientBed = paitientBed;
    }

    public Paitient(Integer paitientId, String paitientName, String paitientGender, String paitientDateStart, String paitientDept, String paitientState, String paitientDoc, String paitientRoom, String paitientBed, Personnel personnel) {
        this.paitientId = paitientId;
        this.paitientName = paitientName;
        this.paitientGender = paitientGender;
        this.paitientDateStart = paitientDateStart;
        this.paitientDept = paitientDept;
        this.paitientState = paitientState;
        this.paitientDoc = paitientDoc;
        this.paitientRoom = paitientRoom;
        this.paitientBed = paitientBed;
        this.personnel = personnel;
    }

    public Integer getPaitientId() {
        return paitientId;
    }

    public void setPaitientId(Integer paitientId) {
        this.paitientId = paitientId;
    }

    public String getPaitientName() {
        return paitientName;
    }

    public void setPaitientName(String paitientName) {
        this.paitientName = paitientName;
    }

    public String getPaitientGender() {
        return paitientGender;
    }

    public void setPaitientGender(String paitientGender) {
        this.paitientGender = paitientGender;
    }

    public String getPaitientDateStart() {
        return paitientDateStart;
    }

    public void setPaitientDateStart(String paitientDateStart) {
        this.paitientDateStart = paitientDateStart;
    }

    public String getPaitientDept() {
        return paitientDept;
    }

    public void setPaitientDept(String paitientDept) {
        this.paitientDept = paitientDept;
    }

    public String getPaitientState() {
        return paitientState;
    }

    public void setPaitientState(String paitientState) {
        this.paitientState = paitientState;
    }

    public String getPaitientDoc() {
        return paitientDoc;
    }

    public void setPaitientDoc(String paitientDoc) {
        this.paitientDoc = paitientDoc;
    }

    public String getPaitientRoom() {
        return paitientRoom;
    }

    public void setPaitientRoom(String paitientRoom) {
        this.paitientRoom = paitientRoom;
    }

    public String getPaitientBed() {
        return paitientBed;
    }

    public void setPaitientBed(String paitientBed) {
        this.paitientBed = paitientBed;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }

    @Override
    public String toString() {
        return "Paitient{" +
                "paitientId=" + paitientId +
                ", paitientName='" + paitientName + '\'' +
                ", paitientGender='" + paitientGender + '\'' +
                ", paitientDateStart='" + paitientDateStart + '\'' +
                ", paitientDept='" + paitientDept + '\'' +
                ", paitientState='" + paitientState + '\'' +
                ", paitientDoc='" + paitientDoc + '\'' +
                ", paitientRoom='" + paitientRoom + '\'' +
                ", paitientBed='" + paitientBed + '\'' +
                ", personnel=" + personnel +
                '}';
    }
}
