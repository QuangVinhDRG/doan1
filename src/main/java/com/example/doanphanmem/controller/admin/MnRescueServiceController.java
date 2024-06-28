package com.example.doanphanmem.controller.admin;

import com.example.doanphanmem.dao.AddNewServiceFormDAO;
import com.example.doanphanmem.dao.ServiceDAO;
import com.example.doanphanmem.entity.AddNewService_Account;
import com.example.doanphanmem.entity.EmailService;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

@WebServlet("/admin-rescue-service")
public class MnRescueServiceController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AddNewServiceFormDAO addNewServiceFormDAO;
    private ServiceDAO serviceDAO;

    public MnRescueServiceController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        addNewServiceFormDAO = new AddNewServiceFormDAO();
        serviceDAO = new ServiceDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String approveFormId = request.getParameter("approveFormId");
        String refuseFormId = request.getParameter("refuseFormId");
        String refuseReason = request.getParameter("refuseReason");
        if (approveFormId != null && refuseFormId == null) {
            EmailService emailService = addNewServiceFormDAO.getEmailServiceInformation(approveFormId);
            addNewServiceFormDAO.approveService(approveFormId);
            sendEmail(emailService.getRescuerEmail(), approveFormId, emailService.getRescuerId(), emailService.getRescuerName(), emailService.getServiceName(), emailService.getServiceDescription(), "Approve");
        } else if (approveFormId == null && refuseFormId != null) {
            EmailService emailService = addNewServiceFormDAO.getEmailServiceInformation(refuseFormId);
            addNewServiceFormDAO.refuseService(refuseFormId, refuseReason);
            sendEmail(emailService.getRescuerEmail(), refuseFormId, emailService.getRescuerId(), emailService.getRescuerName(), emailService.getServiceName(), emailService.getServiceDescription(), "Refuse", refuseReason);
        }

        List<AddNewService_Account> addNewServiceList = addNewServiceFormDAO.getAll();
        request.setAttribute("addNewServiceList", addNewServiceList);
        request.setAttribute("serviceList", serviceDAO.getAll());
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/mn_rescue_service.jsp");
        rd.forward(request, response);
    }

    private void sendEmail(String toEmail, String formId, String rescuerId, String rescuerName, String serviceName, String serviceDescription, String signal, String... notes) {
        String fromEmail = "bloodmoon.251103@gmail.com";
        String fromPassword = "wisvyuygbubqmkbp";
        String host = "smtp.gmail.com"; // e.g., smtp.gmail.com for Gmail

        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2 TLSv1.3"); // Enable all protocols

        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, fromPassword);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.addHeader("Content-Type", "text/html; charset=utf-8");
            message.setFrom(new InternetAddress(fromEmail));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("R.A Da Nang - Thông báo - " + formId);
            if (signal.equals("Approve")) {
                message.setContent("<!DOCTYPE html>\r\n"
                        + "<html>\r\n"
                        + "<body>\r\n"
                        + "<h1>THÔNG BÁO <span style=\"color: green\">CHẤP THUẬN</span> ĐỀ NGHỊ THÊM MỚI DỊCH VỤ CỨU HỘ</h1>\r\n"
                        + "<p><b>Mã đơn vị cứu hộ yêu cầu: </b>" + rescuerId + "</p>\r\n"
                        + "<p><b>Tên đơn vị cứu hộ yêu cầu: </b>" + rescuerName + "</p>\r\n"
                        + "<p><b>Tên dịch vụ: </b>" + serviceName + "</p>\r\n"
                        + "<p><b>Mô tả: </b>" + serviceDescription + "</p>\r\n", "text/html; charset=utf-8");
            } else if (signal.equals("Refuse")) {
                message.setContent("<!DOCTYPE html>\r\n"
                        + "<html>\r\n"
                        + "<body>\r\n"
                        + "<h1>THÔNG BÁO <span style=\"color: red\">TỪ CHỐI</span> ĐỀ NGHỊ THÊM MỚI DỊCH VỤ CỨU HỘ</h1>\r\n"
                        + "<p><b>Mã đơn vị cứu hộ yêu cầu: </b>" + rescuerId + "</p>\r\n"
                        + "<p><b>Tên đơn vị cứu hộ yêu cầu: </b>" + rescuerName + "</p>\r\n"
                        + "<p><b>Tên dịch vụ: </b>" + serviceName + "</p>\r\n"
                        + "<p><b>Mô tả: </b>" + serviceDescription + "</p>\r\n"
                        + "<p><b>Lý do: </b>" + notes[0] + "</p>\r\n", "text/html; charset=utf-8");
            }
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        } finally {
            System.out.println("Done!");
        }
    }
}
