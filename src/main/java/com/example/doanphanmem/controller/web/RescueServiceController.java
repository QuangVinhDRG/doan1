package com.example.doanphanmem.controller.web;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/rescue-service")
public class RescueServiceController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RescueServiceController() {
        super();
    }

    @Override
    public void init() throws ServletException {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/web/rescue_service.jsp");
        rd.forward(request, response);
    }
}
