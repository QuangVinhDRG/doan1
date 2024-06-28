package com.example.doanphanmem.entity;

public class AddNewServiceForm {
    private String formId;
    private String serviceName;
    private String description;
    private String rescuerId;
    private String approvedStatus;

    public AddNewServiceForm() {
    }

    public AddNewServiceForm(String formId, String serviceName, String description, String rescuerId, String approvedStatus) {
        this.formId = formId;
        this.serviceName = serviceName;
        this.description = description;
        this.rescuerId = rescuerId;
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

    public String getRescuerId() {
        return rescuerId;
    }

    public void setRescuerId(String rescuerId) {
        this.rescuerId = rescuerId;
    }

    public String isApprovedStatus() {
        return approvedStatus;
    }

    public void setApprovedStatus(String approvedStatus) {
        this.approvedStatus = approvedStatus;
    }
}
