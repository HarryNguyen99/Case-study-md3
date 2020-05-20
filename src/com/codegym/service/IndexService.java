package com.codegym.service;


import com.codegym.model.Review;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class IndexService extends ConnectionJDBC implements IndexITF {


    @Override
    public List<Review> selectTableUsers() {

        List<Review> selectReview = new ArrayList<>();
//        String query = "{call select_Review()}";
        Connection connection = getConnection();
        System.out.println(connection);


//             CallableStatement callableStatement = connection.prepareCall("select * from view_review");
//                ResultSet rs = callableStatement.executeQuery();
//                while (rs.next()){
//                    int idReview = rs.getInt("id");
//                    String nameUser = rs.getString("nameUser");
//                    int poinReview = rs.getInt("poinReview");
//                    String destinations = rs.getString("destinations");
//                    String title = rs.getString("title");
//                    String img = rs.getString("img");
//                    selectReview.add(new Review(idReview, nameUser ,destinations, title, poinReview,img));
//                }


        return selectReview;
    }
}
