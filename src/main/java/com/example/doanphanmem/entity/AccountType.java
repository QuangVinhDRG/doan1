package com.example.doanphanmem.entity;

public class AccountType {
    private int accountTypeId;
    private String accountTypeName;
    private String accountTypeDesc;

    public AccountType() {
    }

    public AccountType(int accountTypeId, String accountTypeName, String accountTypeDesc) {
        this.accountTypeId = accountTypeId;
        this.accountTypeName = accountTypeName;
        this.accountTypeDesc = accountTypeDesc;
    }

    public int getAccountTypeId() {
        return accountTypeId;
    }

    public void setAccountTypeId(int accountTypeId) {
        this.accountTypeId = accountTypeId;
    }

    public String getAccountTypeName() {
        return accountTypeName;
    }

    public void setAccountTypeName(String accountTypeName) {
        this.accountTypeName = accountTypeName;
    }

    public String getAccountTypeDesc() {
        return accountTypeDesc;
    }

    public void setAccountTypeDesc(String accountTypeDesc) {
        this.accountTypeDesc = accountTypeDesc;
    }
}
