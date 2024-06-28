package com.example.doanphanmem.dao;

import com.example.doanphanmem.db.DbConnect;
import com.example.doanphanmem.entity.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAO {
    public List<Service> getAll() {
        try {
            Connection connection = DbConnect.getConn();
            PreparedStatement preparedStatement = connection.prepareCall("execute prGetAllService");
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Service> resultList = new ArrayList<>();
            while (resultSet.next()) {
                Service service = new Service();
                service.setServiceId(resultSet.getString("maDV"));
                service.setServiceName(resultSet.getString("tenDV"));
                service.setServiceDesc(resultSet.getString("moTa"));
                resultList.add(service);
            }
            connection.close();
            return resultList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
