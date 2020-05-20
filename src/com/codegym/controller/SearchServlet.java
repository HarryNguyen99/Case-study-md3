package com.codegym.controller;

import com.codegym.model.Review;
import com.codegym.service.ReviewDetails;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet(name = "SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    ReviewDetails reviewDetails;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       findByName(request,response);
    }

    private void findByName(HttpServletRequest request, HttpServletResponse response) {
        String name = ""+ request.getParameter("name");
        List<Review> listReview = reviewDetails.selectByName(name);
        request.setAttribute("listReview",listReview);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/search.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        findByDate(request,response);
    }

    private void findByDate(HttpServletRequest request, HttpServletResponse response) {
        List<Review> listReview = reviewDetails.selectByDay();
        request.setAttribute("listReview",listReview);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/search.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
