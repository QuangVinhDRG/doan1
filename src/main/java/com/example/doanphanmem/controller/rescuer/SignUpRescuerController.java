package com.example.doanphanmem.controller.rescuer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sign-up-rescuer")
public class SignUpRescuerController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SignUpRescuerController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/rescuer/sign_up.jsp");
        rd.forward(request, response);
    }
}
