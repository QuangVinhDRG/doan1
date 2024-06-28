package com.example.doanphanmem.entity;

public class RescueHistory {
    private String rescueRequestId;
    private String licensePlateNumber;
    private String requestTime;
    private String location;
    private String services;
    private String status;

    public RescueHistory() {
    }

    public RescueHistory(String rescueRequestId, String licensePlateNumber, String requestTime, String location, String services, String status) {
        this.rescueRequestId = rescueRequestId;
        this.licensePlateNumber = licensePlateNumber;
        this.requestTime = requestTime;
        this.location = location;
        this.services = services;
        this.status = status;
    }

    public String getRescueRequestId() {
        return rescueRequestId;
    }

    public void setRescueRequestId(String rescueRequestId) {
        this.rescueRequestId = rescueRequestId;
    }

    public String getLicensePlateNumber() {
        return licensePlateNumber;
    }

    public void setLicensePlateNumber(String licensePlateNumber) {
        this.licensePlateNumber = licensePlateNumber;
    }

    public String getRequestTime() {
        return requestTime;
    }

    public void setRequestTime(String requestTime) {
        this.requestTime = requestTime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getServices() {
        return services;
    }

    public void setServices(String services) {
        this.services = services;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
