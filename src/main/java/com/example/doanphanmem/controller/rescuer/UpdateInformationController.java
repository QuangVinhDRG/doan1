package com.example.doanphanmem.controller.rescuer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/res-update-information")
public class UpdateInformationController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateInformationController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/rescuer/update_information.jsp");
        rd.forward(request, response);
    }
}
