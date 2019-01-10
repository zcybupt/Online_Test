<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Bean.Question" %>
<%@ page import="DAO.ExamDAO" %>
<%@ page import="DAO.impl.ExamDAOImpl" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Multiple Choices Questions</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">


</head>

<body class="top-navigation" onload="setThreshold()">
<%
    if (session.getAttribute("user") == null) {
        response.setHeader("refresh", "0;url=./login.jsp");
    } else {
        ExamDAO examDAO = new ExamDAOImpl();
        ArrayList<Question> questions = examDAO.getExamPaper();
        for (Question question : questions) {
            System.out.println(question.getQuestionID() + ":" + question.getAnswer());
        }
        pageContext.setAttribute("questions", questions);
        session.setAttribute("questions", questions);
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
                    <form action="/ExamServlet" method="post" id="exam-form">
                        <div class="test_title" style="float: right;">
                            <p class="test_time">
                                <span>Time Remain: </span><b class="alt-1" id="time-display">00:00:10</b>
                            </p>

                        </div>

                        <div class="test_content">
                            <div class="test_content_title">
                                <h2>Multiple Choices Questions</h2>
                                <p>
                                    <span>Total 5 questions, 30 minutes to answer.</span>
                                </p>
                            </div>
                        </div>
                        <div class="test_content_nr">
                            <c:forEach items="${questions}" var="question" varStatus="idx1">
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
                                                                        <input type="radio" class="i-checks"
                                                                               name="answer${idx1.index}"
                                                                               value="${option.charAt(0)}"
                                                                               id="0_answer_${idx1.index}_option_${idx2.index}">&nbsp&nbsp${option.substring(2)}
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
                                            <span class="float-right">20 Marks</span>
                                            <span>There is only one correct answer. </span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>


                        <div align="center" style="padding-bottom: 50px;">
                            <input type="button" data-toggle="modal" class="btn btn-sm btn-primary m-t-n-xs"
                                   value="Submit Answers" href="#modal-form">
                            <div id="modal-form" class="modal fade" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Submit Answers</h4>
                                            <button style="float:right;" type="button" class="close"
                                                    data-dismiss="modal"
                                                    aria-label="Close"><span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">Are you sure to submit your answers?</div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                                Close
                                            </button>
                                            <button type="button" onclick="submitExam();" id="submit-button" name="test_jiaojuan" class="btn btn-primary">Submit
                                                Answers
                                            </button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div>
                            </div>
                        </div>
                        <input name="re-exam" type="hidden" value="default" id="re-exam">
                        <input name="threshold" type="hidden" id="threshold">
                    </form>
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
<script>
    window.jQuery(function ($) {
        "use strict";
        if (this.timeElement)

            $('time').countDown({
                with_separators: false
            });
        $('.alt-1').countDown({
            css_class: 'countdown-alt-1'
        });
        $('.alt-2').countDown({
            css_class: 'countdown-alt-2'
        });

        $('.alt-1').on('time.elapsed', function () {
            if (sessionStorage.getItem("examTimes") !== "1") {
                alert("Time out!\n2nd exam will automatically start! ");
                sessionStorage.setItem("examTimes", "1");
                $('#re-exam').val("true");
                $('#exam-form').submit();
            } else if (sessionStorage.getItem("examTimes") === "1") {
                alert("Time out!\n2nd exam has finished! ");
                sessionStorage.setItem("examTimes", "0");
                $('#re-exam').val("false");
                $('#exam-form').submit();
            }
        });
    });

    function submitExam(){
        sessionStorage.setItem("examTimes", "0");
        $('#re-exam').val("false");
        $('#exam-form').submit();
    }

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
<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });

    function setThreshold() {
        document.getElementById("threshold").value = sessionStorage.getItem("threshold");
    }
</script>


<%
    }
%>


</body>

</html>

