package com.xie.pojo;

public class Bed {
    private Integer bedId;
    private String bedNo;
    private String bedRoomId;
    private String bedJudge;
    private Room room;
    private Paitient paitient;

    public Bed() {
    }

    public Bed(Integer bedId, String bedNo, String bedRoomId, String bedJudge) {
        this.bedId = bedId;
        this.bedNo = bedNo;
        this.bedRoomId = bedRoomId;
        this.bedJudge = bedJudge;
    }

    public Bed(Integer bedId, String bedNo, String bedRoomId, String bedJudge, Room room) {
        this.bedId = bedId;
        this.bedNo = bedNo;
        this.bedRoomId = bedRoomId;
        this.bedJudge = bedJudge;
        this.room = room;
    }

    public Bed(Integer bedId, String bedNo, String bedRoomId, String bedJudge, Room room, Paitient paitient) {
        this.bedId = bedId;
        this.bedNo = bedNo;
        this.bedRoomId = bedRoomId;
        this.bedJudge = bedJudge;
        this.room = room;
        this.paitient = paitient;
    }

    public Integer getBedId() {
        return bedId;
    }

    public void setBedId(Integer bedId) {
        this.bedId = bedId;
    }

    public String getBedNo() {
        return bedNo;
    }

    public void setBedNo(String bedNo) {
        this.bedNo = bedNo;
    }

    public String getBedRoomId() {
        return bedRoomId;
    }

    public void setBedRoomId(String bedRoomId) {
        this.bedRoomId = bedRoomId;
    }

    public String getBedJudge() {
        return bedJudge;
    }

    public void setBedJudge(String bedJudge) {
        this.bedJudge = bedJudge;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Paitient getPaitient() {
        return paitient;
    }

    public void setPaitient(Paitient paitient) {
        this.paitient = paitient;
    }

    @Override
    public String toString() {
        return "Bed{" +
                "bedId=" + bedId +
                ", bedNo='" + bedNo + '\'' +
                ", bedRoomId='" + bedRoomId + '\'' +
                ", bedJudge='" + bedJudge + '\'' +
                ", room=" + room +
                ", paitient=" + paitient +
                '}';
    }
}
