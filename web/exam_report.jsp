<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Bean.Question" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.Exam" %>
<%@ page import="org.apache.commons.lang3.ArrayUtils" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Exam Report</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">


</head>

<body class="top-navigation">
<%
    if (session.getAttribute("user") == null) {
        response.setHeader("refresh", "0;url=./login.jsp");
    } else {
        ArrayList<Question> questions = (ArrayList) session.getAttribute("questions");

        String[] userAnswers = (String[]) session.getAttribute("userAnswers");
        String[] firstUserAnswers = (String[]) session.getAttribute("firstUserAnswers");
        ArrayList<Question> firstQuestions = (ArrayList<Question>) session.getAttribute("firstQuestions");
        if (firstUserAnswers != null && firstQuestions != null) {
            questions.addAll(firstQuestions);
            userAnswers = ArrayUtils.addAll(userAnswers, firstUserAnswers);
        }
        int index = 0;
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

                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>Exam Report</h2>
                        </div>

                        <div class="test_content_nr">
                            <div class="col-lg-12">
                                <div class="ibox">
                                    <div class="ibox-title">
                                        <h5>Summary</h5>
                                    </div>
                                    <%
                                        Exam exam = (Exam) session.getAttribute("exam");
                                        String passOrNot = exam.passOrNot();
                                        String emotion = "!";
                                    %>

                                    <div class="ibox-content" style="">
                                        <div class="text-center">
                                            <%
                                                if (passOrNot.equals("fail")) {
                                                    emotion = ".";
                                                }
                                            %>
                                            Your Mark is <%=exam.getScore()%>/100 here<%=emotion%> You
                                            have <%=passOrNot%> the exam.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="test_content_title">
                            <h2>Detailed Report</h2>
                        </div>
                        <div class="test_content_nr">
                            <%
                                int i = 1;
                            %>
                            <c:forEach items="${questions}" var="question" varStatus="idx1">
                                <%
                                    if (i == 1) {
                                        out.println("<h3 align=\"center\">Second Exam</h3>");
                                    }
                                    if (i == 6) {
                                        out.println("<h3 align=\"center\">First Exam</h3>");
                                    }
                                    i++;
                                %>
                                <div class="col-lg-12">
                                    <div class="ibox ">
                                        <div class="ibox-title">
                                            <h5>Question ${idx1.index + 1}
                                            </h5>
                                            <div class="ibox-tools">
                                                <a class="collapse-link">
                                                    <i class="fa fa-chevron-up"></i>
                                                </a>
                                                    <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
                                                    <%--<i class="fa fa-wrench"></i>--%>
                                                    <%--</a>--%>
                                            </div>
                                        </div>
                                        <div class="ibox-content">
                                            <div class="test_content_nr_tt">
                                                <font>${question.questionContent}</font></p>

                                            </div>
                                            <div id="qu_0_${idx1.index}">
                                                <div class="test_content_nr_main">
                                                    <ul>
                                                        <c:forEach items="${question.questionOptions.split(\";\")}"
                                                                   var="option"
                                                                   varStatus="idx2">
                                                            <div class="option">
                                                                <label for="0_answer_${idx1.index}_option_${idx2.index}">
                                                                    <div class="i-checks">
                                                                        <c:choose>
                                                                            <c:when test="${option.substring(0, 1) == question.getAnswer()}">
                                                                                <input type="radio"
                                                                                       checked="checked"
                                                                                       class="i-checks"
                                                                                       disabled="disabled"
                                                                                       name="answer${idx1.index}"
                                                                                       value="${option.charAt(0)}"
                                                                                       id="0_answer_${idx1.index}_option_${idx2.index}">&nbsp&nbsp${option.substring(2)}
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <input type="radio"
                                                                                       class="i-checks"
                                                                                       disabled="disabled"
                                                                                       name="answer${idx1.index}"
                                                                                       value="${option.charAt(0)}"
                                                                                       id="0_answer_${idx1.index}_option_${idx2.index}">&nbsp&nbsp${option.substring(2)}
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </div>
                                                                </label>
                                                            </div>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ibox-footer">
                                                <%--todo--%>
                                            <span class="float-right">Your answer: <%=userAnswers[index]%>&nbsp;&nbsp;&nbsp;Correct answer: ${question.getAnswer()} </span>
                                            <span>
                                                <%
                                                    if (userAnswers[index].equals(questions.get(index).getAnswer())) {
                                                        out.println("Correct");
                                                    } else {
                                                        out.println("Wrong");
                                                    }
                                                %>
                                            </span>
                                            <% index++; %>
                                                <%--This is simple footer example--%>
                                        </div>
                                    </div>


                                </div>
                            </c:forEach>


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
    <%--<script>--%>
    <%--window.jQuery(function ($) {--%>
    <%--"use strict";--%>

    <%--$('time').countDown({--%>
    <%--with_separators: false--%>
    <%--});--%>
    <%--$('.alt-1').countDown({--%>
    <%--css_class: 'countdown-alt-1'--%>
    <%--});--%>
    <%--$('.alt-2').countDown({--%>
    <%--css_class: 'countdown-alt-2'--%>
    <%--});--%>

    <%--});--%>

    <%--$(function () {--%>
    <%--$('li.option label').click(function () {--%>
    <%--debugger;--%>
    <%--var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id');--%>
    <%--var cardLi = $('a[href=#' + examId + ']');--%>
    <%--if (!cardLi.hasClass('hasBeenAnswer')) {--%>
    <%--cardLi.addClass('hasBeenAnswer');--%>
    <%--}--%>
    <%--});--%>
    <%--});--%>
    <%--</script>--%>
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
        <%
    }
%>


</body>

</html>

