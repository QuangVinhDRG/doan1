package com.example.doanphanmem.dao;

import com.example.doanphanmem.db.DbConnect;
import com.example.doanphanmem.entity.EmailRescueRequest;
import com.example.doanphanmem.entity.RescueHistory;
import com.example.doanphanmem.entity.RescueRequestTable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class RescueRequestFormDAO {
    public String getServiceByRequestId(String requestId) {
        try {
            List<String> list = new ArrayList<>();
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prGetService ?");
            preparedStatement.setString(1, requestId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                list.add(resultSet.getString(1));
            }
            connection.close();
            return String.join(", ", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<String> getImageByRequestId(String requestId) {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prGetImage ?");
            preparedStatement.setString(1, requestId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<String> imageLinks = new ArrayList<>();
            while (resultSet.next()) {
                imageLinks.add(resultSet.getString("hinhAnh"));
            }
            connection.close();
            return imageLinks;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<String> getDescriptionByRequestId(String requestId) {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prGetRescueDesc ?");
            preparedStatement.setString(1, requestId);
            List<String> descList = new ArrayList<>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                descList.add(" - " + resultSet.getString("moTa"));
            }
            return descList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<RescueRequestTable> getAll() {
        try {
            List<RescueRequestTable> list = new ArrayList<RescueRequestTable>();
            Connection connection = DbConnect.getConn();
            String sql = "execute prRescueRequestTable";
            PreparedStatement preparedStatement = connection.prepareCall(sql);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                RescueRequestTable data = new RescueRequestTable();
                data.setRescueRequestId(resultSet.getString("maYCCH"));
                data.setLicensePlateNumber(resultSet.getString("bienSoXe"));
                data.setRequestTime(LocalDateTime.parse(resultSet.getString("thoiGianYC"), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S")));
                data.setLocation(resultSet.getString("viTri"));
                data.setServiceName(getServiceByRequestId(resultSet.getString("maYCCH")));
                data.setImageLink(getImageByRequestId(resultSet.getString("maYCCH")));
                data.setDescription(getDescriptionByRequestId(resultSet.getString("maYCCH")));
                list.add(data);
            }
            connection.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void approveRescueRequest(String formId) {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prApproveRescueRequest ?");
            preparedStatement.setString(1, formId);
            preparedStatement.executeUpdate();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void refuseRescueRequest(String formId, String reason) {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prRefuseRescueRequest ?, ?");
            preparedStatement.setString(1, formId);
            preparedStatement.setString(2, reason);
            preparedStatement.executeUpdate();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public EmailRescueRequest getEmailRescueRequestInformation(String formId) {
        try {
            Connection connection = DbConnect.getConn();
            EmailRescueRequest emailRescueRequest = new EmailRescueRequest();
            PreparedStatement getCustomerInfo = connection.prepareCall("execute prCustomerRequestInformation ?");
            PreparedStatement getServices = connection.prepareCall("execute prGetService ?");
            PreparedStatement getRescuerInfo = connection.prepareCall("execute prRescuerInformation ?");
            getCustomerInfo.setString(1, formId);
            getServices.setString(1, formId);
            getRescuerInfo.setString(1, formId);

            ResultSet customerInfo = getCustomerInfo.executeQuery();
            while (customerInfo.next()) {
                emailRescueRequest.setCustomerId(customerInfo.getString("maKH"));
                emailRescueRequest.setCustomerName(customerInfo.getString("tenTK"));
                emailRescueRequest.setCustomerEmail(customerInfo.getString("email"));
                emailRescueRequest.setRescueRequestTime(LocalDateTime.parse(customerInfo.getString("thoiGianYC"), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S")));
                emailRescueRequest.setRescueRequestLocation(customerInfo.getString("viTri"));
            }

            ResultSet services = getServices.executeQuery();
            List<String> serviceList = new ArrayList<>();
            while (services.next()) {
                serviceList.add(services.getString("tenDV"));
            }
            String service = String.join(",", serviceList);
            emailRescueRequest.setServices(service);

            ResultSet rescuerInfo = getRescuerInfo.executeQuery();
            while (rescuerInfo.next()) {
                emailRescueRequest.setRescuerName(rescuerInfo.getString("tenTK"));
                emailRescueRequest.setRescuerPhoneNumber(rescuerInfo.getString("sdt"));
            }

            connection.close();
            return emailRescueRequest;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<RescueHistory> getRescueHistory() {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prGetRescueHistory");
            ResultSet resultSet = preparedStatement.executeQuery();
            List<RescueHistory> resultList = new ArrayList<>();
            while (resultSet.next()) {
                RescueHistory rescueHistory = new RescueHistory();
                rescueHistory.setRescueRequestId(resultSet.getString("maYCCH"));
                rescueHistory.setLicensePlateNumber(resultSet.getString("bienSoXe"));
                rescueHistory.setRequestTime(LocalDateTime.parse(resultSet.getString("thoiGianYC"), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S")).format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")));
                rescueHistory.setLocation(resultSet.getString("viTri"));
                rescueHistory.setServices(getServiceByRequestId(resultSet.getString("maYCCH")));
                rescueHistory.setStatus(resultSet.getString("trangThai"));
                resultList.add(rescueHistory);
            }
            connection.close();
            return resultList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
