<%--
  Created by IntelliJ IDEA.
  User: Yiming
  Date: 2019/1/8
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DAO.ExamDAO" %>
<%@ page import="DAO.impl.ExamDAOImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.Exam" %>
<%@ page import="Bean.User" %>


<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Report</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <%--<link href="css/animate.css" rel="stylesheet">--%>
    <%--<link href="css/style.css" rel="stylesheet">--%>
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <!--Plugin CSS file with desired skin-->
    <link rel="stylesheet" href="css/plugins/ionRangeSlider/ion.rangeSlider.css"/>
    <link rel="stylesheet" href="css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css"/>
    <%--<link rel="stylesheet" href="css/plugins/ionRangeSlider/ion.rangeSlider.skinNice.css"/>--%>
    <%--<link rel="stylesheet" href="css/plugins/ionRangeSlider/ion.rangeSlider.skinSimple.css"/>--%>


    <%--<link href="css/plugins/iCheck/custom.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/cropper/cropper.min.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/switchery/switchery.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">--%>

    <link href="css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <%--<link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/select2/select2.min.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet">--%>

    <%--<link href="css/plugins/dualListbox/bootstrap-duallistbox.min.css" rel="stylesheet">--%>

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">


</head>

<body class="top-navigation">
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.setHeader("refresh", "0;url=./login.jsp");
    } else {
        ExamDAO examDAO = new ExamDAOImpl();
        ArrayList<Exam> exams = examDAO.queryExamHistory(user.getUsername());
        request.setAttribute("exams", exams);
    }
%>


<div id="wrapper">
    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom white-bg">
            <nav class="navbar navbar-expand-lg navbar-static-top" role="navigation">
                <!--<div class="navbar-header">-->
                <!--<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">-->
                <!--<i class="fa fa-reorder"></i>-->
                <!--</button>-->

                <a href="#" class="navbar-brand">Inspinia</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-reorder"></i>
                </button>

                <!--</div>-->
                <div class="navbar-collapse collapse" id="navbar">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="active">
                            <a aria-expanded="false" role="button" href="layouts.html"> Back to main Layout page</a>
                        </li>
                        <li class="dropdown">
                            <a aria-expanded="false" role="button" href="#" class="dropdown-toggle"
                               data-toggle="dropdown"> Menu item</a>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a aria-expanded="false" role="button" href="#" class="dropdown-toggle"
                               data-toggle="dropdown"> Menu item</a>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a aria-expanded="false" role="button" href="#" class="dropdown-toggle"
                               data-toggle="dropdown"> Menu item</a>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a aria-expanded="false" role="button" href="#" class="dropdown-toggle"
                               data-toggle="dropdown"> Menu item</a>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                                <li><a href="">Menu item</a></li>
                            </ul>
                        </li>

                    </ul>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <a href="login.jsp">
                                <i class="fa fa-sign-out"></i> Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>


        <div class="wrapper wrapper-content">
            <div class="container">


                <div class="row">
                    <div class="test_content_title">
                        <h2>Previous Exam Report</h2>
                    </div>
                    <div class="col-lg-12">

                        <%--<table class="table table-striped">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>

                        <%--<th>#</th>--%>
                        <%--<th>Project</th>--%>
                        <%--<th>Name</th>--%>
                        <%--<th>Phone</th>--%>
                        <%--<th>Company</th>--%>
                        <%--<th>Completed</th>--%>
                        <%--<th>Task</th>--%>
                        <%--<th>Date</th>--%>
                        <%--<th>Action</th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--<tr>--%>
                        <%--<td>1</td>--%>
                        <%--<td>Project--%>
                        <%--<small>This is example of project</small>--%>
                        <%--</td>--%>
                        <%--<td>Patrick Smith</td>--%>
                        <%--<td>0800 051213</td>--%>
                        <%--<td>Inceptos Hymenaeos Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">0.52/1.561</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>20%</td>--%>
                        <%--<td>Jul 14, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>2</td>--%>
                        <%--<td>Alpha project</td>--%>
                        <%--<td>Alice Jackson</td>--%>
                        <%--<td>0500 780909</td>--%>
                        <%--<td>Nec Euismod In Company</td>--%>
                        <%--<td><span class="pie" style="display: none;">6,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>40%</td>--%>
                        <%--<td>Jul 16, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>3</td>--%>
                        <%--<td>Betha project</td>--%>
                        <%--<td>John Smith</td>--%>
                        <%--<td>0800 1111</td>--%>
                        <%--<td>Erat Volutpat</td>--%>
                        <%--<td><span class="pie" style="display: none;">3,1</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 1 1 0 8.000000000000002 Z" fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 0 8.000000000000002 A 8 8 0 0 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>75%</td>--%>
                        <%--<td>Jul 18, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>4</td>--%>
                        <%--<td>Gamma project</td>--%>
                        <%--<td>Anna Jordan</td>--%>
                        <%--<td>(016977) 0648</td>--%>
                        <%--<td>Tellus Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">4,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 15.48012994148332 10.836839096340286 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 15.48012994148332 10.836839096340286 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>18%</td>--%>
                        <%--<td>Jul 22, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>2</td>--%>
                        <%--<td>Alpha project</td>--%>
                        <%--<td>Alice Jackson</td>--%>
                        <%--<td>0500 780909</td>--%>
                        <%--<td>Nec Euismod In Company</td>--%>
                        <%--<td><span class="pie" style="display: none;">6,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>40%</td>--%>
                        <%--<td>Jul 16, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>1</td>--%>
                        <%--<td>Project--%>
                        <%--<small>This is example of project</small>--%>
                        <%--</td>--%>
                        <%--<td>Patrick Smith</td>--%>
                        <%--<td>0800 051213</td>--%>
                        <%--<td>Inceptos Hymenaeos Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">0.52/1.561</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>20%</td>--%>
                        <%--<td>Jul 14, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>4</td>--%>
                        <%--<td>Gamma project</td>--%>
                        <%--<td>Anna Jordan</td>--%>
                        <%--<td>(016977) 0648</td>--%>
                        <%--<td>Tellus Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">4,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 15.48012994148332 10.836839096340286 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 15.48012994148332 10.836839096340286 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>18%</td>--%>
                        <%--<td>Jul 22, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>1</td>--%>
                        <%--<td>Project--%>
                        <%--<small>This is example of project</small>--%>
                        <%--</td>--%>
                        <%--<td>Patrick Smith</td>--%>
                        <%--<td>0800 051213</td>--%>
                        <%--<td>Inceptos Hymenaeos Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">0.52/1.561</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>20%</td>--%>
                        <%--<td>Jul 14, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>2</td>--%>
                        <%--<td>Alpha project</td>--%>
                        <%--<td>Alice Jackson</td>--%>
                        <%--<td>0500 780909</td>--%>
                        <%--<td>Nec Euismod In Company</td>--%>
                        <%--<td><span class="pie" style="display: none;">6,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>40%</td>--%>
                        <%--<td>Jul 16, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>3</td>--%>
                        <%--<td>Betha project</td>--%>
                        <%--<td>John Smith</td>--%>
                        <%--<td>0800 1111</td>--%>
                        <%--<td>Erat Volutpat</td>--%>
                        <%--<td><span class="pie" style="display: none;">3,1</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 1 1 0 8.000000000000002 Z" fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 0 8.000000000000002 A 8 8 0 0 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>75%</td>--%>
                        <%--<td>Jul 18, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>4</td>--%>
                        <%--<td>Gamma project</td>--%>
                        <%--<td>Anna Jordan</td>--%>
                        <%--<td>(016977) 0648</td>--%>
                        <%--<td>Tellus Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">4,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 15.48012994148332 10.836839096340286 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 15.48012994148332 10.836839096340286 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>18%</td>--%>
                        <%--<td>Jul 22, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>2</td>--%>
                        <%--<td>Alpha project</td>--%>
                        <%--<td>Alice Jackson</td>--%>
                        <%--<td>0500 780909</td>--%>
                        <%--<td>Nec Euismod In Company</td>--%>
                        <%--<td><span class="pie" style="display: none;">6,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>40%</td>--%>
                        <%--<td>Jul 16, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>1</td>--%>
                        <%--<td>Project--%>
                        <%--<small>This is example of project</small>--%>
                        <%--</td>--%>
                        <%--<td>Patrick Smith</td>--%>
                        <%--<td>0800 051213</td>--%>
                        <%--<td>Inceptos Hymenaeos Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">0.52/1.561</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>20%</td>--%>
                        <%--<td>Jul 14, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                        <%--<td>4</td>--%>
                        <%--<td>Gamma project</td>--%>
                        <%--<td>Anna Jordan</td>--%>
                        <%--<td>(016977) 0648</td>--%>
                        <%--<td>Tellus Ltd</td>--%>
                        <%--<td><span class="pie" style="display: none;">4,9</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 15.48012994148332 10.836839096340286 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 15.48012994148332 10.836839096340286 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--</td>--%>
                        <%--<td>18%</td>--%>
                        <%--<td>Jul 22, 2013</td>--%>
                        <%--<td><a href="#"><i class="fa fa-check text-navy"></i></a></td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>
                        <%--</table>--%>

                        <%--<table class="table table-striped">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                        <%--<th>#</th>--%>
                        <%--<th>Exam ID</th>--%>
                        <%--<th>Total Score</th>--%>
                        <%--<th>Threshold to Pass</th>--%>
                        <%--<th>Your Score</th>--%>
                        <%--<th>Result</th>--%>
                        <%--<th></th>--%>

                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--<%--%>
                        <%--int flag = 0;--%>
                        <%--%>--%>
                        <%--<c:forEach items="${exams}" var="exam" varStatus="idx">--%>
                        <%--<%--%>
                        <%--flag++;--%>
                        <%--%>--%>
                        <%--<tr>--%>
                        <%--<td><%=flag%>--%>
                        <%--</td>--%>
                        <%--<td>${exam.examID}</td>--%>
                        <%--<td>100</td>--%>
                        <%--<td>--%>
                        <%--<span class="pie" style="display: none;">${exam.threshold}/100</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--${exam.threshold}</td>--%>
                        <%--<td><span class="pie" style="display: none;">${exam.score}/100</span>--%>
                        <%--<svg class="peity" height="16" width="16">--%>
                        <%--<path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"--%>
                        <%--fill="#1ab394"></path>--%>
                        <%--<path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"--%>
                        <%--fill="#d7d7d7"></path>--%>
                        <%--</svg>--%>
                        <%--${exam.score}</td>--%>
                        <%--<td>${exam.passOrNot()}</td>--%>
                        <%--<td>--%>
                        <%--&lt;%&ndash;TODO&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<c:when test="${exam.passOrNot()} == 'pass'">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="#"><i class="fa fa-check text-navy"></i></a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>
                        <%--</td>--%>

                        <%--</tr>--%>
                        <%--</c:forEach>--%>
                        <%--</tbody>--%>
                        <%--</table>--%>
                    </div>

                    <div class="col-lg-12">

                        <div class="ibox">
                            <div class="ibox-title">
                                <h5>Previous Report
                                    <%--<small>Example of login in modal box</small>--%>
                                </h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content" style="">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Exam ID</th>
                                        <th>Test Date</th>
                                        <th>Total Score</th>
                                        <th>Threshold to Pass</th>
                                        <th>Test Times</th>
                                        <th>Your Score</th>
                                        <th>Result</th>
                                        <th>&nbsp;</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        int flag = 0;
                                    %>
                                    <c:forEach items="${exams}" var="exam" varStatus="idx">
                                        <%
                                            flag++;
                                        %>
                                        <tr>
                                            <td><%=flag%>
                                            </td>
                                            <td>${exam.examID}</td>
                                            <td>
                                                Day:${exam.examID.substring(6,8)}, Mon:${exam.examID.substring(4,6)},
                                                Year:${exam.examID.substring(0,4)}

                                            </td>
                                            <td>100</td>

                                            <td>
                                                <span class="pie" style="display: none;">${exam.threshold}/100</span>
                                                <svg class="peity" height="16" width="16">
                                                    <path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"
                                                          fill="#1ab394"></path>
                                                    <path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"
                                                          fill="#d7d7d7"></path>
                                                </svg>
                                                    ${exam.threshold}</td>
                                            <td>${exam.examTime}</td>
                                            <td><span class="pie" style="display: none;">${exam.score}/100</span>
                                                <svg class="peity" height="16" width="16">
                                                    <path d="M 8 8 L 8 0 A 8 8 0 0 1 12.702282018339785 14.47213595499958 Z"
                                                          fill="#1ab394"></path>
                                                    <path d="M 8 8 L 12.702282018339785 14.47213595499958 A 8 8 0 1 1 7.999999999999998 0 Z"
                                                          fill="#d7d7d7"></path>
                                                </svg>
                                                    ${exam.score}</td>
                                            <td>${exam.passOrNot()}</td>
                                            <td>

                                                <c:if test="${exam.passOrNot().equals(\"pass\")}">
                                                    <i class="fa fa-check text-navy"></i>
                                                </c:if>
                                                <c:if test="${exam.passOrNot().equals(\"fail\")}">
                                                    <i class="fa fa-remove" style="color: #ff0000;"></i>
                                                </c:if>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>

                    <div align="center" style="padding-bottom: 50px;">
                        <a class="btn btn-sm btn-default m-t-n-xs" href="home_page.jsp">Back to homepage</a>
                    </div>


                </div>

            </div>

        </div>


        <div class="footer">
            <div class="float-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2018
            </div>
        </div>

    </div>
</div>


<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- Flot -->
<script src="js/plugins/flot/jquery.flot.js"></script>
<script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="js/plugins/flot/jquery.flot.resize.js"></script>

<!-- ChartJS-->
<script src="js/plugins/chartJs/Chart.min.js"></script>

<!-- Peity -->
<script src="js/plugins/peity/jquery.peity.min.js"></script>
<!-- Peity demo -->
<script src="js/demo/peity-demo.js"></script>


<!--Plugin JavaScript file-->
<%--<script src="js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>--%>
<script>

    $("#ionrange_2").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " carats",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_3").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        postfix: "°",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_4").ionRangeSlider({
        values: [
            "January", "February", "March",
            "April", "May", "June",
            "July", "August", "September",
            "October", "November", "December"
        ],
        type: 'single',
        hasGrid: true
    });

    $("#ionrange_5").ionRangeSlider({
        min: 10000,
        max: 100000,
        step: 100,
        postfix: " km",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
    });

    $(".dial").knob();

    var basic_slider = document.getElementById('basic_slider');

    noUiSlider.create(basic_slider, {
        start: 40,
        behaviour: 'tap',
        connect: 'upper',
        range: {
            'min': 20,
            'max': 80
        }
    });

    var range_slider = document.getElementById('range_slider');

    noUiSlider.create(range_slider, {
        start: [40, 60],
        behaviour: 'drag',
        connect: true,
        range: {
            'min': 20,
            'max': 80
        }
    });

    var drag_fixed = document.getElementById('drag-fixed');

    noUiSlider.create(drag_fixed, {
        start: [40, 60],
        behaviour: 'drag-fixed',
        connect: true,
        range: {
            'min': 20,
            'max': 80
        }
    });


</script>


<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
</script>
<script src="js-self/Ajax.js"></script>


<script>
    $(document).ready(function () {


        var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
        var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];

        var data1 = [
            {label: "Data 1", data: d1, color: '#17a084'},
            {label: "Data 2", data: d2, color: '#127e68'}
        ];
        $.plot($("#flot-chart1"), data1, {
            xaxis: {
                tickDecimals: 0
            },
            series: {
                lines: {
                    show: true,
                    fill: true,
                    fillColor: {
                        colors: [{
                            opacity: 1
                        }, {
                            opacity: 1
                        }]
                    },
                },
                points: {
                    width: 0.1,
                    show: false
                },
            },
            grid: {
                show: false,
                borderWidth: 0
            },
            legend: {
                show: false,
            }
        });

        var lineData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
                {
                    label: "Example dataset",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: [48, 48, 60, 39, 56, 37, 30]
                },
                {
                    label: "Example dataset",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: [65, 59, 40, 51, 36, 25, 40]
                }
            ]
        };

        var lineOptions = {
            responsive: true
        };


        var ctx = document.getElementById("lineChart").getContext("2d");
        new Chart(ctx, {type: 'line', data: lineData, options: lineOptions});

    });
</script>

<script src="js/jquery.easy-pie-chart.js"></script>
<script src="js/jquery.countdown.js"></script>
<script>
    window.jQuery(function ($) {
        "use strict";

        $('time').countDown({
            with_separators: false
        });
        $('.alt-1').countDown({
            css_class: 'countdown-alt-1'
        });
        $('.alt-2').countDown({
            css_class: 'countdown-alt-2'
        });

    });

    $(function () {
        $('li.option label').click(function () {
            debugger;
            var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id');
            var cardLi = $('a[href=#' + examId + ']');
            if (!cardLi.hasClass('hasBeenAnswer')) {
                cardLi.addClass('hasBeenAnswer');
            }
        });
    });
</script>


<%--<!-- JSKnob -->--%>
<script src="js/plugins/jsKnob/jquery.knob.js"></script>


<script>

    $(".dial").knob();

    var basic_slider = document.getElementById('basic_slider');

    noUiSlider.create(basic_slider, {
        start: 40,
        behaviour: 'tap',
        connect: 'upper',
        range: {
            'min': 20,
            'max': 80
        }
    });

    var range_slider = document.getElementById('range_slider');

    noUiSlider.create(range_slider, {
        start: [40, 60],
        behaviour: 'drag',
        connect: true,
        range: {
            'min': 20,
            'max': 80
        }
    });

    var drag_fixed = document.getElementById('drag-fixed');

    noUiSlider.create(drag_fixed, {
        start: [40, 60],
        behaviour: 'drag-fixed',
        connect: true,
        range: {
            'min': 20,
            'max': 80
        }
    });


</script>


<script>

    $("#start-button").click(function () {
        sessionStorage.setItem("threshold", $("#threshold").val());
        alert("threshold=" + $("#threshold").val());
        window.location.href = "./exam_page.jsp";

    });


</script>


</body>

</html>


































