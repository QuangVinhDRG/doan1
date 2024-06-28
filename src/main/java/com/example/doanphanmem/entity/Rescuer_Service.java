package com.example.doanphanmem.entity;

public class Rescuer_Service {
    private String rescuerId;
    private String serviceId;
    private double servicePrice;
    private String description;

    public Rescuer_Service() {
    }

    public Rescuer_Service(String rescuerId, String serviceId, double servicePrice, String description) {
        this.rescuerId = rescuerId;
        this.serviceId = serviceId;
        this.servicePrice = servicePrice;
        this.description = description;
    }

    public String getRescuerId() {
        return rescuerId;
    }

    public void setRescuerId(String rescuerId) {
        this.rescuerId = rescuerId;
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public double getServicePrice() {
        return servicePrice;
    }

    public void setServicePrice(double servicePrice) {
        this.servicePrice = servicePrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
