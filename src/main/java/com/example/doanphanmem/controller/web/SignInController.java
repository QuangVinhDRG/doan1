package com.example.doanphanmem.controller.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/sign-in")
public class SignInController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SignInController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/sign_in.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email.equals("admin@gmail.com") && password.equals("admin")) {
            response.sendRedirect(request.getContextPath() + "/mn-user");
        } else if (email.equals("rescuer@gmail.com") && password.equals("rescuer")) {
            response.sendRedirect(request.getContextPath() + "/res-rescue-request");
        } else if (email.equals("customer@gmail.com") && password.equals("customer")) {
            httpSession.setAttribute("signedIn", true);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/home.jsp");
            rd.forward(request, response);
        } else if (email.equals("censor@gmail.com") && password.equals("censor")) {
            response.sendRedirect(request.getContextPath() + "/approve-rescuer");
        } else {
            request.setAttribute("signedIn", false);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/web/sign_in.jsp");
            rd.forward(request, response);
        }
    }
}
