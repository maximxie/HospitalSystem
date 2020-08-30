package com.xie.pojo;

import java.util.List;

public class Room {
    private Integer roomId;
    private String roomNo;
    private String roomJudge;
//    private List<Bed> beds;

    public Room() {
    }

    public Room(Integer roomId, String roomNo, String roomJudge) {
        this.roomId = roomId;
        this.roomNo = roomNo;
        this.roomJudge = roomJudge;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public String getRoomJudge() {
        return roomJudge;
    }

    public void setRoomJudge(String roomJudge) {
        this.roomJudge = roomJudge;
    }

//    public List<Bed> getBeds() {
//        return beds;
//    }
//
//    public void setBeds(List<Bed> beds) {
//        this.beds = beds;
//    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId=" + roomId +
                ", roomNo='" + roomNo + '\'' +
                ", roomJudge='" + roomJudge + '\'' +
//                ", beds=" + beds +
                '}';
    }
}
