<%@ page import="Bean.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.Exam" %>
<%@ page import="DAO.impl.ExamDAOImpl" %>
<%@ page import="DAO.ExamDAO" %><%--
  Created by IntelliJ IDEA.
  User: Yiming
  Date: 2019/1/8
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page import="DAO.ExamDAO" %>--%>
<%--<%@ page import="DAO.impl.ExamDAOImpl" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>
<%--<%@ page import="Bean.Exam" %>--%>
<%--<%@ page import="Bean.User" %>--%>


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


                <div class="row m-b-lg m-t-lg">
                    <div class="col-md-6">

                        <div class="profile-image">
                            <img src="img/a4.png" class="rounded-circle circle-border m-b-md" alt="profile">
                        </div>
                        <div class="profile-info">
                            <div class="">
                                <div>
                                    <h2 class="no-margins">
                                        <%
                                            User user = (User) session.getAttribute("user");
                                        %>
                                        Hi, <%= user.getUsername() + "!"%>
                                    </h2>

                                    Email: <%=user.getEmail()%>



                                    <h4>Elite User</h4>
                                    <small>
                                        There are many variations of passages of Lorem Ipsum available, but the majority
                                        have suffered alteration in some form Ipsum available.
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <table class="table small m-b-xs">
                            <tbody>
                            <tr>
                                <td>
                                    <strong>142</strong> Projects
                                </td>
                                <td>
                                    <strong>22</strong> Followers
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <strong>61</strong> Comments
                                </td>
                                <td>
                                    <strong>54</strong> Articles
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>154</strong> Tags
                                </td>
                                <td>
                                    <strong>32</strong> Friends
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-3">
                        <small>Total Number of Test: </small>
                        <h2 class="no-margins" style="font-weight: bold;">
                            <%
                                ExamDAO examDAO = new ExamDAOImpl();
                                ArrayList<Exam> examHistory = examDAO.queryExamHistory(user.getUsername());
//                                        System.out.println(examHistory.size());
                            %>
                            <%=examHistory.size() %>
                        </h2>
                        <div id="sparkline1"></div>
                    </div>


                </div>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="ibox">
                            <div class="ibox-title">
                                <h5>English Test
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
                                <div class="text-center">
                                    <a data-toggle="modal" class="btn btn-primary" href="#modal-form">Start A New
                                        Exam</a>
                                    <a  class="btn btn-primary" href="previous_report.jsp">My Previous Exam Report</a>
                                </div>
                                <div id="modal-form" class="modal fade" aria-hidden="true" style="display: none;">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Start A New Exam</h4>
                                                <button style="float:right;" type="button" class="close"
                                                        data-dismiss="modal"
                                                        aria-label="Close"><span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">Set the score threshold of PASS the exam</div>
                                                <div class="form-group">
                                                    <div class="m-r-md">
                                                        <div style="display:inline;width:85px;height:85px;">
                                                            <canvas width="170" height="170"
                                                                    style="width: 85px; height: 85px;"></canvas>
                                                            <input id="threshold" type="text" value="60" class="dial m-r"
                                                                   data-fgcolor="#1AB394" data-width="85"
                                                                   data-height="85"
                                                                   style="width: 46px; height: 28px; position: absolute; vertical-align: middle; margin-top: 28px; margin-left: -65px; border: 0px; background: none; font: bold 17px Arial; text-align: center; color: rgb(26, 179, 148); padding: 0px; -webkit-appearance: none;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Close
                                                </button>
                                                <button type="button" class="btn btn-primary" id="start-button">Start Exam
                                                </button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">

                        <div class="ibox">
                            <div class="ibox-content">
                                <h3>About Alex Smith</h3>


                                <p class="small">
                                    There are many variations of passages of Lorem Ipsum available, but the majority
                                    have
                                    suffered alteration in some form, by injected humour, or randomised words which
                                    don't.
                                    <br/>
                                    <br/>
                                    If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                                    anything embarrassing
                                </p>

                                <p class="small font-bold">
                                    <span><i class="fa fa-circle text-navy"></i> Online status</span>
                                </p>

                            </div>
                        </div>

                        <div class="ibox">
                            <div class="ibox-content">
                                <h3>Followers and friends</h3>
                                <p class="small">
                                    If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                                    anything embarrassing
                                </p>
                                <div class="user-friends">
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a3.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a1.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a2.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a4.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a5.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a6.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a7.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a8.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a2.jpg"></a>
                                    <a href=""><img alt="image" class="rounded-circle" src="img/a1.jpg"></a>
                                </div>
                            </div>
                        </div>

                        <div class="ibox">
                            <div class="ibox-content">
                                <h3>Personal friends</h3>
                                <ul class="list-unstyled file-list">
                                    <li><a href=""><i class="fa fa-file"></i> Project_document.docx</a></li>
                                    <li><a href=""><i class="fa fa-file-picture-o"></i> Logo_zender_company.jpg</a></li>
                                    <li><a href=""><i class="fa fa-stack-exchange"></i> Email_from_Alex.mln</a></li>
                                    <li><a href=""><i class="fa fa-file"></i> Contract_20_11_2014.docx</a></li>
                                    <li><a href=""><i class="fa fa-file-powerpoint-o"></i> Presentation.pptx</a></li>
                                    <li><a href=""><i class="fa fa-file"></i> 10_08_2015.docx</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="ibox">
                            <div class="ibox-content">
                                <h3>Private message</h3>

                                <p class="small">
                                    Send private message to Alex Smith
                                </p>

                                <div class="form-group">
                                    <label>Subject</label>
                                    <input type="email" class="form-control" placeholder="Message subject">
                                </div>
                                <div class="form-group">
                                    <label>Message</label>
                                    <textarea class="form-control" placeholder="Your message" rows="3"></textarea>
                                </div>
                                <button class="btn btn-primary btn-block">Send</button>

                            </div>
                        </div>

                    </div>

                    <div class="col-lg-5">

                        <div class="social-feed-box">

                            <div class="float-right social-action dropdown">
                                <button data-toggle="dropdown" class="dropdown-toggle btn-white">
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu m-t-xs">
                                    <li><a href="#">Config</a></li>
                                </ul>
                            </div>
                            <div class="social-avatar">
                                <a href="" class="float-left">
                                    <img alt="image" src="img/a1.jpg">
                                </a>
                                <div class="media-body">
                                    <a href="#">
                                        Andrew Williams
                                    </a>
                                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                </div>
                            </div>
                            <div class="social-body">
                                <p>
                                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                    default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                    in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                    default model text.
                                </p>

                                <div class="btn-group">
                                    <button class="btn btn-white btn-xs"><i class="fa fa-thumbs-up"></i> Like this!
                                    </button>
                                    <button class="btn btn-white btn-xs"><i class="fa fa-comments"></i> Comment</button>
                                    <button class="btn btn-white btn-xs"><i class="fa fa-share"></i> Share</button>
                                </div>
                            </div>
                            <div class="social-footer">
                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a1.jpg">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            Andrew Williams
                                        </a>
                                        Internet tend to repeat predefined chunks as necessary, making this the first
                                        true generator on the Internet. It uses a dictionary of over 200 Latin words.
                                        <br/>
                                        <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 26 Like this!</a> -
                                        <small class="text-muted">12.06.2014</small>
                                    </div>
                                </div>

                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a2.jpg">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            Andrew Williams
                                        </a>
                                        Making this the first true generator on the Internet. It uses a dictionary of.
                                        <br/>
                                        <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 11 Like this!</a> -
                                        <small class="text-muted">10.07.2014</small>
                                    </div>
                                </div>

                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a3.jpg">
                                    </a>
                                    <div class="media-body">
                                        <textarea class="form-control" placeholder="Write comment..."></textarea>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="social-feed-box">

                            <div class="float-right social-action dropdown">
                                <button data-toggle="dropdown" class="dropdown-toggle btn-white">
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu m-t-xs">
                                    <li><a href="#">Config</a></li>
                                </ul>
                            </div>
                            <div class="social-avatar">
                                <a href="" class="float-left">
                                    <img alt="image" src="img/a6.jpg">
                                </a>
                                <div class="media-body">
                                    <a href="#">
                                        Andrew Williams
                                    </a>
                                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                </div>
                            </div>
                            <div class="social-body">
                                <p>
                                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                    default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                    in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                    default model text.
                                </p>
                                <p>
                                    Lorem Ipsum as their
                                    default model text, and a search for 'lorem ipsum' will uncover many web sites still
                                    in their infancy. Packages and web page editors now use Lorem Ipsum as their
                                    default model text.
                                </p>
                                <img src="img/gallery/3.jpg" class="img-fluid">
                                <div class="btn-group">
                                    <button class="btn btn-white btn-xs"><i class="fa fa-thumbs-up"></i> Like this!
                                    </button>
                                    <button class="btn btn-white btn-xs"><i class="fa fa-comments"></i> Comment</button>
                                    <button class="btn btn-white btn-xs"><i class="fa fa-share"></i> Share</button>
                                </div>
                            </div>
                            <div class="social-footer">
                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a1.jpg">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            Andrew Williams
                                        </a>
                                        Internet tend to repeat predefined chunks as necessary, making this the first
                                        true generator on the Internet. It uses a dictionary of over 200 Latin words.
                                        <br/>
                                        <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 26 Like this!</a> -
                                        <small class="text-muted">12.06.2014</small>
                                    </div>
                                </div>

                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a2.jpg">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            Andrew Williams
                                        </a>
                                        Making this the first true generator on the Internet. It uses a dictionary of.
                                        <br/>
                                        <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 11 Like this!</a> -
                                        <small class="text-muted">10.07.2014</small>
                                    </div>
                                </div>

                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a8.jpg">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            Andrew Williams
                                        </a>
                                        Making this the first true generator on the Internet. It uses a dictionary of.
                                        <br/>
                                        <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 11 Like this!</a> -
                                        <small class="text-muted">10.07.2014</small>
                                    </div>
                                </div>

                                <div class="social-comment">
                                    <a href="" class="float-left">
                                        <img alt="image" src="img/a3.jpg">
                                    </a>
                                    <div class="media-body">
                                        <textarea class="form-control" placeholder="Write comment..."></textarea>
                                    </div>
                                </div>

                            </div>

                        </div>


                    </div>
                    <div class="col-lg-4 m-b-lg">
                        <div id="vertical-timeline" class="vertical-container light-timeline no-margins">
                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon navy-bg">
                                    <i class="fa fa-briefcase"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>Meeting</h2>
                                    <p>Conference on the sales results for the previous year. Monica please examine
                                        sales trends in marketing and products. Below please find the current status of
                                        the sale.
                                    </p>
                                    <a href="#" class="btn btn-sm btn-primary"> More info</a>
                                    <span class="vertical-date">
                                        Today <br>
                                        <small>Dec 24</small>
                                    </span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon blue-bg">
                                    <i class="fa fa-file-text"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>Send documents to Mike</h2>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                        Ipsum has been the industry's standard dummy text ever since.</p>
                                    <a href="#" class="btn btn-sm btn-success"> Download document </a>
                                    <span class="vertical-date">
                                        Today <br>
                                        <small>Dec 24</small>
                                    </span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon lazur-bg">
                                    <i class="fa fa-coffee"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>Coffee Break</h2>
                                    <p>Go to shop and find some products. Lorem Ipsum is simply dummy text of the
                                        printing and typesetting industry. Lorem Ipsum has been the industry's. </p>
                                    <a href="#" class="btn btn-sm btn-info">Read more</a>
                                    <span class="vertical-date"> Yesterday <br><small>Dec 23</small></span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon yellow-bg">
                                    <i class="fa fa-phone"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>Phone with Jeronimo</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum
                                        provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis
                                        unde? Iste voluptatibus minus veritatis qui ut.</p>
                                    <span class="vertical-date">Yesterday <br><small>Dec 23</small></span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon navy-bg">
                                    <i class="fa fa-comments"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>Chat with Monica and Sandra</h2>
                                    <p>Web sites still in their infancy. Various versions have evolved over the years,
                                        sometimes by accident, sometimes on purpose (injected humour and the like). </p>
                                    <span class="vertical-date">Yesterday <br><small>Dec 23</small></span>
                                </div>
                            </div>
                        </div>

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

s
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

    $("#start-button").click(function(){
        sessionStorage.setItem("threshold", $("#threshold").val());
        // alert("threshold=" + $("#threshold").val());
        window.location.href="./exam_page.jsp";

    });




</script>


</body>

</html>

















