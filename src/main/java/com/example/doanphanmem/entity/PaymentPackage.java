package com.example.doanphanmem.entity;

public class PaymentPackage {
    private String packageId;
    private String duration;
    private double price;
    private String description;

    public PaymentPackage() {
    }

    public PaymentPackage(String packageId, String duration, double price, String description) {
        this.packageId = packageId;
        this.duration = duration;
        this.price = price;
        this.description = description;
    }

    public String getPackageId() {
        return packageId;
    }

    public void setPackageId(String packageId) {
        this.packageId = packageId;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
