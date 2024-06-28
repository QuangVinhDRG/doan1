package com.example.doanphanmem.dao;

import com.example.doanphanmem.db.DbConnect;
import com.example.doanphanmem.entity.AddNewService_Account;
import com.example.doanphanmem.entity.EmailService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AddNewServiceFormDAO {
    public List<AddNewService_Account> getAll() {
        try {
            List<AddNewService_Account> list = new ArrayList<AddNewService_Account>();
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prShowServiceRequest");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                AddNewService_Account addNewServiceForm = new AddNewService_Account();
                addNewServiceForm.setFormId(resultSet.getString("maDN"));
                addNewServiceForm.setServiceName(resultSet.getString("tenDV"));
                addNewServiceForm.setDescription(resultSet.getString("moTa"));
                addNewServiceForm.setRescuerName(resultSet.getString("tenTK"));
                addNewServiceForm.setApprovedStatus(resultSet.getString("trangThai"));
                addNewServiceForm.setRescuerEmail(resultSet.getString("email"));
                list.add(addNewServiceForm);
            }
            connection.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void approveService(String formId) {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prApproveService ?");
            preparedStatement.setString(1, formId);
            preparedStatement.executeUpdate();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void refuseService(String formId, String reason) {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prRefuseService ?");
            preparedStatement.setString(1, formId);
            preparedStatement.executeUpdate();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public EmailService getEmailServiceInformation(String formId) {
        try {
            EmailService emailService = new EmailService();
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prShowEmailService ?");
            preparedStatement.setString(1, formId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                emailService.setRescuerId(resultSet.getString("maDVCH"));
                emailService.setRescuerName(resultSet.getString("tenTK"));
                emailService.setServiceName(resultSet.getString("tenDV"));
                emailService.setServiceDescription(resultSet.getString("moTa"));
                emailService.setRescuerEmail(resultSet.getString("email"));
            }
            connection.close();
            return emailService;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
