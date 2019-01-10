function loginSubmit() {
    $.ajax({
        cache: true,
        type: "POST",
        url: "/Login",
        data: $("form").serialize(),
        async: false,
        error: function (request) {
            alert("Connection error");
        },
        success: function (data) {
            if (data === "success") {
                location.href = "home_page.jsp";
            } else {
                $('#loginInfo').text("Please check your user info.");
            }
        }
    });

    return false;
}

function checkUsername() {
    $.ajax({
        cache: true,
        type: "GET",
        url: "/Register",
        data: {
            "username": $('#username').val()
        },
        async: false,
        error: function (request) {
            alert("Connection error");
        },
        success: function (data) {
            if (data === "true") {
                $('#registerInfo').text("User already exists!");
            }
        }
    });
}

function registerSubmit() {
    if ($('#password1').val() !== $('#password').val()) {
        alert("Passwords must match!");
        return false;
    }
    $.ajax({
        cache: true,
        type: "POST",
        url: "/Register",
        data: $("form").serialize(),
        async: false,
        error: function (request) {
            alert("Connection error");
            location.href = "register.jsp";
        },
        success: function (data) {
            location.href = "login.jsp";
        }
    });
    return false;
}
