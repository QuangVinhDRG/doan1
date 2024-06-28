package com.example.doanphanmem.entity;

public class RescueRequestFormDetail {
    private String rescueRequestId;
    private String serviceId;
    private String description;
    private String imageLink;

    public RescueRequestFormDetail() {
    }

    public RescueRequestFormDetail(String rescueRequestId, String serviceId, String description, String imageLink) {
        this.rescueRequestId = rescueRequestId;
        this.serviceId = serviceId;
        this.description = description;
        this.imageLink = imageLink;
    }

    public String getRescueRequestId() {
        return rescueRequestId;
    }

    public void setRescueRequestId(String rescueRequestId) {
        this.rescueRequestId = rescueRequestId;
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }
}
