package com.codegym.service;

import com.codegym.model.Review;

import java.sql.*;

public class ReviewDetails extends ConnectionJDBC implements IReviewDetails {
    @Override
    public Review getReviewById(int id) {
        Review review = null;
        Connection connection = null;
        try {
            connection = getConnection();
            String sql = "select*from postsreview where id_review=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs != null) {
                String name = rs.getString("name_review");
                String title = rs.getString("titleposts");
                String content = rs.getString("content");
                Date datepost = rs.getDate("dateposts");
                int star = rs.getInt("pointevalute");
                String picture = rs.getString("picture");
                review = new Review(id, name, title, content, datepost, star, picture);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            if(connection!=null){
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        return review;
    }
}
