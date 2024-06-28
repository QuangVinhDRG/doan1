package com.example.doanphanmem.entity;

public class Account {
    private String accountId;
    private int accountTypeId;
    private String fullName;
    private String password;
    private String address;
    private String phone;
    private String email;
    private String identityNumber;

    public Account() {
    }

    public Account(String accountId, int accountTypeId, String fullName, String password, String address, String phone, String email, String identityNumber) {
        this.accountId = accountId;
        this.accountTypeId = accountTypeId;
        this.fullName = fullName;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.identityNumber = identityNumber;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public int getAccountTypeId() {
        return accountTypeId;
    }

    public void setAccountTypeId(int accountTypeId) {
        this.accountTypeId = accountTypeId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIdentityNumber() {
        return identityNumber;
    }

    public void setIdentityNumber(String identityNumber) {
        this.identityNumber = identityNumber;
    }
}
