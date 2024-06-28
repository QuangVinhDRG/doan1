package com.example.doanphanmem.entity;

public class ApprovedFile {
    private String fileId;
    private String fileName;
    private String description;
    private String link;
    private String rescuerId;
    private String censorId;
    private boolean approvedStatus;

    public ApprovedFile() {
    }

    public ApprovedFile(String fileId, String fileName, String description, String link, String rescuerId, String censorId, boolean approvedStatus) {
        this.fileId = fileId;
        this.fileName = fileName;
        this.description = description;
        this.link = link;
        this.rescuerId = rescuerId;
        this.censorId = censorId;
        this.approvedStatus = approvedStatus;
    }

    public String getFileId() {
        return fileId;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getRescuerId() {
        return rescuerId;
    }

    public void setRescuerId(String rescuerId) {
        this.rescuerId = rescuerId;
    }

    public String getCensorId() {
        return censorId;
    }

    public void setCensorId(String censorId) {
        this.censorId = censorId;
    }

    public boolean isApprovedStatus() {
        return approvedStatus;
    }

    public void setApprovedStatus(boolean approvedStatus) {
        this.approvedStatus = approvedStatus;
    }
}
