package com.example.doanphanmem.entity;

import java.time.LocalDate;

public class RescuerInformation {
    private String accountId;
    private String representativeName;
    private String representativePhone;
    private boolean activeStatus;
    private boolean approvedStatus;
    private LocalDate expiredDate;

    public RescuerInformation() {
    }

    public RescuerInformation(String accountId, String representativeName, String representativePhone, boolean activeStatus, boolean approvedStatus, LocalDate expiredDate) {
        this.accountId = accountId;
        this.representativeName = representativeName;
        this.representativePhone = representativePhone;
        this.activeStatus = activeStatus;
        this.approvedStatus = approvedStatus;
        this.expiredDate = expiredDate;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getRepresentativeName() {
        return representativeName;
    }

    public void setRepresentativeName(String representativeName) {
        this.representativeName = representativeName;
    }

    public String getRepresentativePhone() {
        return representativePhone;
    }

    public void setRepresentativePhone(String representativePhone) {
        this.representativePhone = representativePhone;
    }

    public boolean isActiveStatus() {
        return activeStatus;
    }

    public void setActiveStatus(boolean activeStatus) {
        this.activeStatus = activeStatus;
    }

    public boolean isApprovedStatus() {
        return approvedStatus;
    }

    public void setApprovedStatus(boolean approvedStatus) {
        this.approvedStatus = approvedStatus;
    }

    public LocalDate getExpiredDate() {
        return expiredDate;
    }

    public void setExpiredDate(LocalDate expiredDate) {
        this.expiredDate = expiredDate;
    }
}
