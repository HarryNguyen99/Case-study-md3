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

@WebServlet(name = "ReviewServlet", urlPatterns = "/review")
public class ReviewServlet extends HttpServlet {
    private  ReviewDetails reviewDetails;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        showReview(request,response);

    }

    private void showReview(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Review review = reviewDetails.getReviewById(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/review.jsp");
        request.setAttribute("review",review);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
