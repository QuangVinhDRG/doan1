package com.example.doanphanmem.entity;

public class AddNewService_Account {
    private String formId;
    private String serviceName;
    private String description;
    private String rescuerName;
    private String rescuerEmail;
    private String approvedStatus;

    public AddNewService_Account() {
    }

    public AddNewService_Account(String formId, String serviceName, String description, String rescuerName, String rescuerEmail, String approvedStatus) {
        this.formId = formId;
        this.serviceName = serviceName;
        this.description = description;
        this.rescuerName = rescuerName;
        this.rescuerEmail = rescuerEmail;
        this.approvedStatus = approvedStatus;
    }

    public String getFormId() {
        return formId;
    }

    public void setFormId(String formId) {
        this.formId = formId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public String getApprovedStatus() {
        return approvedStatus;
    }

    public void setApprovedStatus(String approvedStatus) {
        this.approvedStatus = approvedStatus;
    }
}
