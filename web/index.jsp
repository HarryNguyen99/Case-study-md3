<%--
  Created by IntelliJ IDEA.
  User: harrynguyen
  Date: 15/05/2020
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>index</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<%
    String fullname = request.getParameter("account");
    String role = request.getParameter("typeAccount");
%>
<nav id="navigation" class="navbar navbar-expand-md navbar-light bg-primary sticky-top justify-content-left">
    <div class="container-fluid">
        <a class="navbar-branch" id="logo" href="#">
            <img src="img/logoDBT2.png" height="40"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarResponsive">
            <samp class="navbar-toggler-icon"></samp>
        </button>
        <div class="collapse navbar-collapse " id="navbarResponsive">
            <div class="search-box">
                <input class="form-control" placeholder="Tìm kiếm: Địa điểm, Lịch trình..." type="text">
                <button class="btn btn-link search-btn"><i class="fa fa-search"></i>
                </button>
            </div>
            <ul class="navbar-nav mr-auto ">
                <li class="nav-item active">
                    <a class="nav-link" style="color: white; font-size: 19px"
                       href="#">Trang Chủ
                        <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: white; font-size: 19px"
                       href="#">Review</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: white; font-size: 19px"
                       href="#">Hot Tour</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: white; font-size: 19px"
                       href="#">Vé Máy Bay</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: white; font-size: 19px"
                       href="#">Khách Sạn</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item" style="margin-top: 9px; margin-right: 10px">
                    <a href="#" style="color: white; font-size: 19px">
                    </a>
                </li>
                <li class="nav-item">
                    <%
                        if (fullname == null) {
                    %>
                            <a class="nav-link" style="color: white; font-size: 19px" href="/login?action=signin">Đăng Nhập</a>
                    <%
                        } else {
                    %>
                            <p id="fullname" style="color: white; font-size: 19px"><span id="name"><%=fullname%></span><br/>
                                    <a id="role" href="#" style="color: red; font-size: 17px"><%=role%></a>
                            </p>
                            <a id="dangxuat" class="nav-link" style="color: white; font-size: 19px" href="/logout">Đăng Xuất</a>
                    <%
                        }
                    %>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div id="banner" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#banner" data-slide-to="0" class="active"></li>
        <li data-target="#banner" data-slide-to="1"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/images1.png">
        </div>
        <div class="carousel-item">
            <img src="img/banner2.png.jpg">
        </div>
    </div>
</div>
<div class="container">
    <h3 style="margin-top: 20px; margin-bottom: 20px">HOT reviews</h3>
    <div class="row">
        <div class="col-md-4 spacing" style="height: 380px">
        <div class="col-md-4 hot-review-tour">
            <div class="col-md-12" style="background: white; height: 380px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4 style="color: blue" class="float-left">Lý Mạc Sầu</h4>
                    <h4 class="float-right" style="margin-left: 5px">5.0</h4>
                    <img src="img/star.png"
                         style="width: 25px; height: 25px" class="float-right">
                </div>
                <div style="width: 100%" class="float-left">
                    <h4>Cầu Rồng Đà NẴng</h4>
                    <p style="width: 320px; height: auto">Cầu Rồng Đà Nẵng với hệ thống ánh sáng hiện đại
                        cùng âm thanh và ánh sáng cộng hưởng trong bán kính 300m ở khu vực đầu Rồng phun lửa
                        ... Xem thêm</p>
                        ... <a href="#">Xem thêm</a></p>
                </div>
            </div>
            <div class="col-md-12" style="height: 380px; background: white; margin-top: 40px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4 style="color: blue" class="float-left">Lý Mạc Sầu</h4>
                    <h4 class="float-right" style="margin-left: 5px">5.0</h4>
                    <img src="img/star.png"
                         style="width: 25px; height: 25px" class="float-right">
                </div>
                <div style="width: 100%" class="float-left">
                    <h4>Cầu Rồng Đà NẴng</h4>
                    <p style="width: 320px; height: auto">Cầu Rồng Đà Nẵng với hệ thống ánh sáng hiện đại
                        cùng âm thanh và ánh sáng cộng hưởng trong bán kính 300m ở khu vực đầu Rồng phun lửa
                        ... <a href="#">Xem thêm</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-4 spacing" style="height: 380px">
            <div class="col-md-12" style="background: white">
                <h2>hhhhhfldjlkfjs</h2>ß
            </div>
        </div>
        <div class="col-md-4 spacing" style="height: 380px">
            <div class="col-md-12" style="background: white">
                <h2>hhhhhfldjlkfjs</h2>
        <div class="col-md-4 hot-review-tour">
            <div class="col-md-12" style="background: white; height: 380px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4 style="color: blue" class="float-left">Lý Mạc Sầu</h4>
                    <h4 class="float-right" style="margin-left: 5px">5.0</h4>
                    <img src="img/star.png"
                         style="width: 25px; height: 25px" class="float-right">
                </div>
                <div style="width: 100%" class="float-left">
                    <h4>Cầu Rồng Đà NẴng</h4>
                    <p style="width: 320px; height: auto">Cầu Rồng Đà Nẵng với hệ thống ánh sáng hiện đại
                        cùng âm thanh và ánh sáng cộng hưởng trong bán kính 300m ở khu vực đầu Rồng phun lửa
                        ... <a href="#">Xem thêm</a></p>
                </div>
            </div>
            <div class="col-md-12" style="height: 380px; background: white; margin-top: 40px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4 style="color: blue" class="float-left">Lý Mạc Sầu</h4>
                    <h4 class="float-right" style="margin-left: 5px">5.0</h4>
                    <img src="img/star.png"
                         style="width: 25px; height: 25px" class="float-right">
                </div>
                <div style="width: 100%" class="float-left">
                    <h4>Cầu Rồng Đà NẴng</h4>
                    <p style="width: 320px; height: auto">Cầu Rồng Đà Nẵng với hệ thống ánh sáng hiện đại
                        cùng âm thanh và ánh sáng cộng hưởng trong bán kính 300m ở khu vực đầu Rồng phun lửa
                        ... <a href="#">Xem thêm</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-4 hot-review-tour">
            <div class="col-md-12" style="background: white; height: 380px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4 style="color: blue" class="float-left">Lý Mạc Sầu</h4>
                    <h4 class="float-right" style="margin-left: 5px">5.0</h4>
                    <img src="img/star.png"
                         style="width: 25px; height: 25px" class="float-right">
                </div>
                <div style="width: 100%" class="float-left">
                    <h4>Cầu Rồng Đà NẴng</h4>
                    <p style="width: 320px; height: auto">Cầu Rồng Đà Nẵng với hệ thống ánh sáng hiện đại
                        cùng âm thanh và ánh sáng cộng hưởng trong bán kính 300m ở khu vực đầu Rồng phun lửa
                        ... <a href="#">Xem thêm</a></p>
                </div>
            </div>
            <div class="col-md-12" style="height: 380px; background: white; margin-top: 40px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4 style="color: blue" class="float-left">Lý Mạc Sầu</h4>
                    <h4 class="float-right" style="margin-left: 5px">5.0</h4>
                    <img src="img/star.png"
                         style="width: 25px; height: 25px" class="float-right">
                </div>
                <div style="width: 100%" class="float-left">
                    <h4>Cầu Rồng Đà NẴng</h4>
                    <p style="width: 320px; height: auto">Cầu Rồng Đà Nẵng với hệ thống ánh sáng hiện đại
                        cùng âm thanh và ánh sáng cộng hưởng trong bán kính 300m ở khu vực đầu Rồng phun lửa
                        ... <a href="#">Xem thêm</a></p>
                </div>
            </div>
        </div>
    </div>
    <h3 style="margin-top: 20px; margin-bottom: 20px">HOT Tour</h3>
    <div class="row">
        <div class="col-md-4 hot-review-tour">
            <div class="col-md-12" style="background: white; height: 280px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4>Khám Phá du lịch Đá Nẵng</h4>
                </div>
                <div>
                    <img src="img/money.png"
                         style="width: 20px; height: 20px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">1.385.000</p>
                    <img src="img/time.png"
                         style="width: 20px; height: 20px; margin-left: 40px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">3 ngày</p>
                </div>
            </div>
            <div class="col-md-12" style="background: white; height: 280px; margin-top: 40px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4>Khám Phá du lịch Đá Nẵng</h4>
                </div>
                <div>
                    <img src="img/money.png"
                         style="width: 20px; height: 20px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">1.385.000</p>
                    <img src="img/time.png"
                         style="width: 20px; height: 20px; margin-left: 40px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">3 ngày</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 hot-review-tour">
            <div class="col-md-12" style="background: white; height: 280px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4>Khám Phá du lịch Đá Nẵng</h4>
                </div>
                <div>
                    <img src="img/money.png"
                         style="width: 20px; height: 20px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">1.385.000</p>
                    <img src="img/time.png"
                         style="width: 20px; height: 20px; margin-left: 40px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">3 ngày</p>
                </div>
            </div>
            <div class="col-md-12" style="background: white; height: 280px; margin-top: 40px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4>Khám Phá du lịch Đá Nẵng</h4>
                </div>
                <div>
                    <img src="img/money.png"
                         style="width: 20px; height: 20px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">1.385.000</p>
                    <img src="img/time.png"
                         style="width: 20px; height: 20px; margin-left: 40px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">3 ngày</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 hot-review-tour">
            <div class="col-md-12" style="background: white; height: 280px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4>Khám Phá du lịch Đá Nẵng</h4>
                </div>
                <div>
                    <img src="img/money.png"
                         style="width: 20px; height: 20px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">1.385.000</p>
                    <img src="img/time.png"
                         style="width: 20px; height: 20px; margin-left: 40px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">3 ngày</p>
                </div>
            </div>
            <div class="col-md-12" style="background: white; height: 280px; margin-top: 40px">
                <a href="#"><img src="img/cau-rong-da-nang.jpg"
                                 style="width: 320px; height: 179px; border-radius: 5%; margin-top: 15px"></a>
                <div style="width: 100%; margin-top: 10px">
                    <h4>Khám Phá du lịch Đá Nẵng</h4>
                </div>
                <div>
                    <img src="img/money.png"
                         style="width: 20px; height: 20px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">1.385.000</p>
                    <img src="img/time.png"
                         style="width: 20px; height: 20px; margin-left: 40px" class="float-left">
                    <p class="float-left" style="margin-left: 10px">3 ngày</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid" style="background: black; height: 500px; margin-top: 20px">
    <div style=" width: 700px; height: 450px; margin: 25px auto; text-align: center">
        <img src="img/logoDBT.png" style="margin: 70px auto 30px auto">
        <p style="font-size: 60px;color: white ">Luôn đồng hành cùng bạn</p>
    </div>
</div>

<script src="js/bootstrap.bundle.js"></script>
<script src="js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="js/utilities.js"></script>
<script type="text/javascript" src="js/validate-form.js"></script>
<script type="text/javascript" src="js/validate-register.js"></script>
</body>
</html>