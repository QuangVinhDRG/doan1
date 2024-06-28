package com.example.doanphanmem.dto;

import java.util.List;

public class RescueDTO {

    private String rescueRequestId;
    private String licensePlateNumber;
    private String requestTime;
    private String location;
    private String serviceName;
    private List<String> imageLink;
    private List<String> description;

    public RescueDTO() {
    }

    public RescueDTO(String rescueRequestId, String licensePlateNumber, String requestTime, String location, String serviceName, List<String> imageLink, List<String> description) {
        this.rescueRequestId = rescueRequestId;
        this.licensePlateNumber = licensePlateNumber;
        this.requestTime = requestTime;
        this.location = location;
        this.serviceName = serviceName;
        this.imageLink = imageLink;
        this.description = description;
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

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public List<String> getImageLink() {
        return imageLink;
    }

    public void setImageLink(List<String> imageLink) {
        this.imageLink = imageLink;
    }

    public List<String> getDescription() {
        return description;
    }

    public void setDescription(List<String> description) {
        this.description = description;
    }
}
