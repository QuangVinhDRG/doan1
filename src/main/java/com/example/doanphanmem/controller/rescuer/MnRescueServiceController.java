package com.example.doanphanmem.controller.rescuer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/res-rescue-service")
public class MnRescueServiceController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MnRescueServiceController() {
        super();
    }

    @Override
    public void init() throws ServletException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/rescuer/mn_rescue_service.jsp");
        rd.forward(request, response);
    }
}
