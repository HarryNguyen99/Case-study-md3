package com.codegym.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

import com.codegym.model.SignupAccount;
import com.codegym.service.DatabaseServiceImpl;

@WebServlet(name="LoginServlet", urlPatterns="/login")
public class LoginServlet extends HttpServlet {
    private DatabaseServiceImpl databaseService = new DatabaseServiceImpl();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }

        switch(action) {
            case "signin":
                showSignInForm(request, response);
                break;
            case "signup":
                showSignUpForm(request, response);
                break;
            case "activation":
                activeAccount(request, response);
                break;
            default:
                break;
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "signin":
                signin(request, response);
                break;
            case "signup":
                signup(request, response);
                break;
            default:
                break;
        }
    }

    private void showSignUpForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/signup.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException ex) {
            ex.printStackTrace();
        }
    }

    private void showSignInForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/signin.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException ex) {
            ex.printStackTrace();
        }
    }

    private void signup(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phonenumber = request.getParameter("phonenumber");

        SignupAccount signUpAccount = new SignupAccount();
        signUpAccount.setUsername(username);
        signUpAccount.setPassword(password);
        signUpAccount.setFullname(fullname);
        signUpAccount.setEmail(email);
        signUpAccount.setAddress(address);
        signUpAccount.setPhonenumber(phonenumber);

        databaseService.registerAccountToDB(signUpAccount, email);
    }

    private void signin(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean result = databaseService.checkAccountExists(username, password);

        String resultStr = "";
        try {
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<body>");
            out.println("<h1>" + (resultStr = (result) ? username : "Tai Khoan nay khong ton tai !!!"));
            out.println("</h1>");
            out.println("</body>");
            out.println("</html>");

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    private void activeAccount(HttpServletRequest request, HttpServletResponse response) {
        String userEmail = request.getParameter("userEmail");
        databaseService.updateActiveStatus(userEmail);
    }
}
