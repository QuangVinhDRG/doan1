package com.example.doanphanmem.entity;

import java.time.LocalDateTime;

public class PaymentInformation {
    private String paymentId;
    private String rescuerId;
    private String packageId;
    private LocalDateTime paymentTime;
    private boolean paymentStatus;

    public PaymentInformation() {
    }

    public PaymentInformation(String paymentId, String rescuerId, String packageId, LocalDateTime paymentTime, boolean paymentStatus) {
        this.paymentId = paymentId;
        this.rescuerId = rescuerId;
        this.packageId = packageId;
        this.paymentTime = paymentTime;
        this.paymentStatus = paymentStatus;
    }

    public String getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(String paymentId) {
        this.paymentId = paymentId;
    }

    public String getRescuerId() {
        return rescuerId;
    }

    public void setRescuerId(String rescuerId) {
        this.rescuerId = rescuerId;
    }

    public String getPackageId() {
        return packageId;
    }

    public void setPackageId(String packageId) {
        this.packageId = packageId;
    }

    public LocalDateTime getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(LocalDateTime paymentTime) {
        this.paymentTime = paymentTime;
    }

    public boolean isPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(boolean paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
}
