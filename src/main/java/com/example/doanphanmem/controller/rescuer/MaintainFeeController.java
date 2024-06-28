package com.example.doanphanmem.controller.rescuer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/maintain-fee")
public class MaintainFeeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MaintainFeeController() {

    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/rescuer/maintain_fee.jsp");
        rd.forward(request, response);
    }
}
