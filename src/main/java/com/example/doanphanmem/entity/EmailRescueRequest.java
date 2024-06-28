package com.example.doanphanmem.entity;

import java.time.LocalDateTime;

public class EmailRescueRequest {
    private String customerId;
    private String customerName;
    private String customerEmail;
    private String services;
    private LocalDateTime rescueRequestTime;
    private String rescueRequestLocation;
    private String rescuerName;
    private String rescuerPhoneNumber;

    public EmailRescueRequest() {
    }

    public EmailRescueRequest(String customerId, String customerName, String customerEmail, String services, LocalDateTime rescueRequestTime, String rescueRequestLocation, String rescuerName, String rescuerPhoneNumber) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.services = services;
        this.rescueRequestTime = rescueRequestTime;
        this.rescueRequestLocation = rescueRequestLocation;
        this.rescuerName = rescuerName;
        this.rescuerPhoneNumber = rescuerPhoneNumber;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getServices() {
        return services;
    }

    public void setServices(String services) {
        this.services = services;
    }

    public LocalDateTime getRescueRequestTime() {
        return rescueRequestTime;
    }

    public void setRescueRequestTime(LocalDateTime rescueRequestTime) {
        this.rescueRequestTime = rescueRequestTime;
    }

    public String getRescueRequestLocation() {
        return rescueRequestLocation;
    }

    public void setRescueRequestLocation(String rescueRequestLocation) {
        this.rescueRequestLocation = rescueRequestLocation;
    }

    public String getRescuerName() {
        return rescuerName;
    }

    public void setRescuerName(String rescuerName) {
        this.rescuerName = rescuerName;
    }

    public String getRescuerPhoneNumber() {
        return rescuerPhoneNumber;
    }

    public void setRescuerPhoneNumber(String rescuerPhoneNumber) {
        this.rescuerPhoneNumber = rescuerPhoneNumber;
    }
}
