<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Register</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">IN+</h1>

        </div>
        <h3>Register to IN+</h3>
        <p>Create account to see it in action.</p>
        <form class="m-t" role="form" action="login.jsp" id="register-form">
            <div class="form-group">
                <input type="text" name="username" id="username" class="form-control" placeholder="Username" required
                       oninput="checkUsername()">
                <div id="registerInfo"></div>
            </div>
            <div class="form-group">
                <input type="email" name="email" id="email" class="form-control" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" id="password" class="form-control" placeholder="Password"
                       required>
            </div>
            <div class="form-group">
                <input type="password" name="password1" id="password1" class="form-control"
                       placeholder="Retype Password" required>
            </div>
            <div class="form-group">
                <div class="checkbox i-checks"><label> <input id="check" type="checkbox" class="i-checks" required><i></i> Agree
                    the <a href="https://policies.google.com/terms?hl=en">terms and policy</a> </label></div>
            </div>
            <button id="register-button" type="button" value="Register" onclick="return registerSubmit()"
                    class="btn btn-primary block full-width m-b">Register
            </button>

            <p class="text-muted text-center">
                <small>Already have an account?</small>
            </p>
            <a class="btn btn-sm btn-white btn-block" href="login.jsp">Login</a>
        </form>
        <p class="m-t">
            <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small>
        </p>
    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
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


<%--<script src="js/jquery-3.1.1.min.js"></script>--%>
<%--<script src="js/jquery-migrate-3.0.0.js"></script>--%>
<%--<script src="js/popper.min.js"></script>--%>
<%--<script src="js/bootstrap.min.js"></script>--%>
<%--<script src="js/owl.carousel.min.js"></script>--%>
<%--<script src="js/jquery.waypoints.min.js"></script>--%>
<%--<script src="js/jquery.stellar.min.js"></script>--%>

<script src="js-self/Ajax.js"></script>


</body>

</html>
