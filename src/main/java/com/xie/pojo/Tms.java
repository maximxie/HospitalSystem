package com.xie.pojo;

public class Tms {
    private Integer tmsId;
    private String tmsUser;
    private String tmsPswd;
    private String tmsName;
    private String tmsPower;
    private String tmsDescribe;

    public Tms() {
    }

    public Tms(Integer tmsId, String tmsUser, String tmsPswd, String tmsName, String tmsPower, String tmsDescribe) {
        this.tmsId = tmsId;
        this.tmsUser = tmsUser;
        this.tmsPswd = tmsPswd;
        this.tmsName = tmsName;
        this.tmsPower = tmsPower;
        this.tmsDescribe = tmsDescribe;
    }

    public Integer getTmsId() {
        return tmsId;
    }

    public void setTmsId(Integer tmsId) {
        this.tmsId = tmsId;
    }

    public String getTmsUser() {
        return tmsUser;
    }

    public void setTmsUser(String tmsUser) {
        this.tmsUser = tmsUser;
    }

    public String getTmsPswd() {
        return tmsPswd;
    }

    public void setTmsPswd(String tmsPswd) {
        this.tmsPswd = tmsPswd;
    }

    public String getTmsPower() {
        return tmsPower;
    }

    public void setTmsPower(String tmsPower) {
        this.tmsPower = tmsPower;
    }

    public String getTmsDescribe() {
        return tmsDescribe;
    }

    public void setTmsDescribe(String tmsDescribe) {
        this.tmsDescribe = tmsDescribe;
    }

    public String getTmsName() {
        return tmsName;
    }

    public void setTmsName(String tmsName) {
        this.tmsName = tmsName;
    }

    @Override
    public String toString() {
        return "Tms{" +
                "tmsId=" + tmsId +
                ", tmsUser='" + tmsUser + '\'' +
                ", tmsPswd='" + tmsPswd + '\'' +
                ", tmsName='" + tmsName + '\'' +
                ", tmsPower='" + tmsPower + '\'' +
                ", tmsDescribe='" + tmsDescribe + '\'' +
                '}';
    }
}
