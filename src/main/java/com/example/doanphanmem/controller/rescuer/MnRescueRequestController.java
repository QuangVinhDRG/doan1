package com.example.doanphanmem.controller.rescuer;

import com.example.doanphanmem.dao.RescueRequestFormDAO;
import com.example.doanphanmem.dto.RescueDTO;
import com.example.doanphanmem.entity.EmailRescueRequest;
import com.example.doanphanmem.entity.RescueRequestTable;

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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

@WebServlet("/res-rescue-request")
public class MnRescueRequestController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private RescueRequestFormDAO rescueRequestFormDAO;

    public MnRescueRequestController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        rescueRequestFormDAO = new RescueRequestFormDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String approveRequestId = request.getParameter("approveRescueRequestId");
        String refuseRequestId = request.getParameter("refuseRescueRequestId");
        String refuseReason = request.getParameter("refuseReason");
        if (approveRequestId != null && refuseRequestId == null) {
            EmailRescueRequest emailRescueRequest = rescueRequestFormDAO.getEmailRescueRequestInformation(approveRequestId);
            rescueRequestFormDAO.approveRescueRequest(approveRequestId);
            sendEmail(emailRescueRequest.getCustomerEmail(), approveRequestId, emailRescueRequest.getCustomerId(), emailRescueRequest.getCustomerName(), emailRescueRequest.getServices(), emailRescueRequest.getRescueRequestTime(), emailRescueRequest.getRescueRequestLocation(), emailRescueRequest.getRescuerName(), emailRescueRequest.getRescuerPhoneNumber(), "Approve");
        } else if (approveRequestId == null && refuseRequestId != null) {
            EmailRescueRequest emailRescueRequest = rescueRequestFormDAO.getEmailRescueRequestInformation(refuseRequestId);
            rescueRequestFormDAO.refuseRescueRequest(refuseRequestId, refuseReason);
            sendEmail(emailRescueRequest.getCustomerEmail(), refuseRequestId, emailRescueRequest.getCustomerId(), emailRescueRequest.getCustomerName(), emailRescueRequest.getServices(), emailRescueRequest.getRescueRequestTime(), emailRescueRequest.getRescueRequestLocation(), emailRescueRequest.getRescuerName(), emailRescueRequest.getRescuerPhoneNumber(), "Refuse", refuseReason);
        }
        request.setAttribute("rescueRequestList", getRescueRequestList());
        request.setAttribute("rescueHistory", rescueRequestFormDAO.getRescueHistory());
        RequestDispatcher rd = request.getRequestDispatcher("/views/rescuer/mn_rescue_request.jsp");
        rd.forward(request, response);
    }

    public List<RescueDTO> getRescueRequestList() {
        List<RescueRequestTable> rescueRequestList = rescueRequestFormDAO.getAll();

        List<RescueDTO> result = new ArrayList<>();
        RescueDTO rescueDTO;

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
        for (RescueRequestTable item : rescueRequestList) {
            rescueDTO = new RescueDTO();
            rescueDTO.setRescueRequestId(item.getRescueRequestId());
            rescueDTO.setLocation(item.getLocation());
            rescueDTO.setRequestTime(item.getRequestTime().format(dateTimeFormatter));
            rescueDTO.setServiceName(item.getServiceName());
            rescueDTO.setLicensePlateNumber(item.getLicensePlateNumber());
            rescueDTO.setImageLink(item.getImageLink());
            rescueDTO.setDescription(item.getDescription());
            result.add(rescueDTO);
        }
        return result;
    }

    private void sendEmail(String toEmail, String formId, String customerId, String customerName, String services, LocalDateTime requestTime, String requestLocation, String rescuerName, String rescuerPhoneNumber, String signal, String... notes) {
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
                                + "<h1>THÔNG BÁO <span style=\"color: green\">TIẾP NHẬN</span> HỖ TRỢ CỨU HỘ XE</h1>\r\n"
                                + "<h3>R.A Đà Nẵng xin tiếp nhận thông tin cứu hộ xe của khách hàng như sau:</h3>\r\n"
                                + "<p><b>Mã khách hàng yêu cầu: </b>" + customerId + "</p>\r\n"
                                + "<p><b>Tên khách hàng yêu cầu: </b>" + customerName + "</p>\r\n"
                                + "<p><b>Danh sách dịch vụ yêu cầu hỗ trợ: </b>" + services + "</p>\r\n"
                                + "<p><b>Thời gian yêu cầu hỗ trợ: </b>" + requestTime.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")) + "</p>\r\n"
                                + "<p><b>Vị trí yêu cầu hỗ trợ: </b>" + requestLocation + "</p>\r\n"
                                + "<h3>ĐƠN VỊ CỨU HỘ THAM GIA HỖ TRỢ:</h3>\r\n"
                                + "<p><b>Tên đơn vị cứu hộ: </b>" + rescuerName + "</p>\r\n"
                                + "<p><b>Số điện thoại của đơn vị cứu hộ: </b>" + rescuerPhoneNumber + "</p>\r\n"
                        , "text/html; charset=utf-8");
            } else if (signal.equals("Refuse")) {
                message.setContent("<!DOCTYPE html>\r\n"
                                + "<html>\r\n"
                                + "<body>\r\n"
                                + "<h1>THÔNG BÁO <span style=\"color: red\">TỪ CHỐI</span> HỖ TRỢ CỨU HỘ XE</h1>\r\n"
                                + "<h3>R.A Đà Nẵng xin tiếp nhận thông tin cứu hộ xe của khách hàng như sau:</h3>\r\n"
                                + "<p><b>Mã khách hàng yêu cầu: </b>" + customerId + "</p>\r\n"
                                + "<p><b>Tên khách hàng yêu cầu: </b>" + customerName + "</p>\r\n"
                                + "<p><b>Danh sách dịch vụ yêu cầu hỗ trợ: </b>" + services + "</p>\r\n"
                                + "<p><b>Thời gian yêu cầu hỗ trợ: </b>" + requestTime.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")) + "</p>\r\n"
                                + "<p><b>Vị trí yêu cầu hỗ trợ: </b>" + requestLocation + "</p>\r\n"
                                + "<h3>ĐƠN VỊ CỨU HỘ THAM GIA HỖ TRỢ:</h3>\r\n"
                                + "<p><b>Tên đơn vị cứu hộ: </b>" + rescuerName + "</p>\r\n"
                                + "<p><b>Số điện thoại của đơn vị cứu hộ: </b>" + rescuerPhoneNumber + "</p>\r\n"
                                + "<p><b>Lý do từ chối: </b>" + notes[0] + "</p>\r\n"
                        , "text/html; charset=utf-8");
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
