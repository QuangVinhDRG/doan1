package com.example.doanphanmem.controller.censor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/approve-rescuer")
public class ApproveRescuerController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ApproveRescuerController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/censor/approve_rescuer.jsp");
        rd.forward(request, response);
    }
}
