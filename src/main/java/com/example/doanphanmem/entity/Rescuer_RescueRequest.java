package com.example.doanphanmem.entity;

import java.time.LocalDateTime;

public class Rescuer_RescueRequest {
    private String rescuerId;
    private String rescueRequestId;
    private LocalDateTime responseTime;

    public Rescuer_RescueRequest() {
    }

    public Rescuer_RescueRequest(String rescuerId, String rescueRequestId, LocalDateTime responseTime) {
        this.rescuerId = rescuerId;
        this.rescueRequestId = rescueRequestId;
        this.responseTime = responseTime;
    }

    public String getRescuerId() {
        return rescuerId;
    }

    public void setRescuerId(String rescuerId) {
        this.rescuerId = rescuerId;
    }

    public String getRescueRequestId() {
        return rescueRequestId;
    }

    public void setRescueRequestId(String rescueRequestId) {
        this.rescueRequestId = rescueRequestId;
    }

    public LocalDateTime getResponseTime() {
        return responseTime;
    }

    public void setResponseTime(LocalDateTime responseTime) {
        this.responseTime = responseTime;
    }
}
