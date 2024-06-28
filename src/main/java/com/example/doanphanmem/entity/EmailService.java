package com.example.doanphanmem.entity;

public class EmailService {
    private String rescuerId;
    private String rescuerName;
    private String rescuerEmail;
    private String serviceName;
    private String serviceDescription;

    public EmailService() {
    }

    public EmailService(String rescuerId, String rescuerName, String rescuerEmail, String serviceName, String serviceDescription) {
        this.rescuerId = rescuerId;
        this.rescuerName = rescuerName;
        this.rescuerEmail = rescuerEmail;
        this.serviceName = serviceName;
        this.serviceDescription = serviceDescription;
    }

    public String getRescuerId() {
        return rescuerId;
    }

    public void setRescuerId(String rescuerId) {
        this.rescuerId = rescuerId;
    }

    public String getRescuerName() {
        return rescuerName;
    }

    public void setRescuerName(String rescuerName) {
        this.rescuerName = rescuerName;
    }

    public String getRescuerEmail() {
        return rescuerEmail;
    }

    public void setRescuerEmail(String rescuerEmail) {
        this.rescuerEmail = rescuerEmail;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }
}
