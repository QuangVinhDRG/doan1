package com.example.doanphanmem.controller.admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/statistic-report")
public class StatisticReportController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public StatisticReportController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/statistic_report.jsp");
        rd.forward(request, response);
    }
}
