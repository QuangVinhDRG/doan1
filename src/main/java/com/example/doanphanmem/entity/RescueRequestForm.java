package com.example.doanphanmem.entity;

import java.time.LocalDateTime;

public class RescueRequestForm {
    private String rescueRequestId;
    private String customerId;
    private String approvedStatus;
    private String location;
    private LocalDateTime requestTime;
    private LocalDateTime finishTime;
    private String rescueId;
    private String vehicleType;
    private String licensePlateNumber;
    private String note;
    private int rateScore;
    private String rateContent;
    private String paymentMethod;

    public RescueRequestForm() {
    }

    public RescueRequestForm(String rescueRequestId, String customerId, String approvedStatus, String location, LocalDateTime requestTime, LocalDateTime finishTime, String rescueId, String vehicleType, String licensePlateNumber, String note, int rateScore, String rateContent, String paymentMethod) {
        this.rescueRequestId = rescueRequestId;
        this.customerId = customerId;
        this.approvedStatus = approvedStatus;
        this.location = location;
        this.requestTime = requestTime;
        this.finishTime = finishTime;
        this.rescueId = rescueId;
        this.vehicleType = vehicleType;
        this.licensePlateNumber = licensePlateNumber;
        this.note = note;
        this.rateScore = rateScore;
        this.rateContent = rateContent;
        this.paymentMethod = paymentMethod;
    }

    public String getRescueRequestId() {
        return rescueRequestId;
    }

    public void setRescueRequestId(String rescueRequestId) {
        this.rescueRequestId = rescueRequestId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getApprovedStatus() {
        return approvedStatus;
    }

    public void setApprovedStatus(String approvedStatus) {
        this.approvedStatus = approvedStatus;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public LocalDateTime getRequestTime() {
        return requestTime;
    }

    public void setRequestTime(LocalDateTime requestTime) {
        this.requestTime = requestTime;
    }

    public LocalDateTime getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(LocalDateTime finishTime) {
        this.finishTime = finishTime;
    }

    public String getRescueId() {
        return rescueId;
    }

    public void setRescueId(String rescueId) {
        this.rescueId = rescueId;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getLicensePlateNumber() {
        return licensePlateNumber;
    }

    public void setLicensePlateNumber(String licensePlateNumber) {
        this.licensePlateNumber = licensePlateNumber;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getRateScore() {
        return rateScore;
    }

    public void setRateScore(int rateScore) {
        this.rateScore = rateScore;
    }

    public String getRateContent() {
        return rateContent;
    }

    public void setRateContent(String rateContent) {
        this.rateContent = rateContent;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
}
