function loginSubmit() {

    //empty??
    var words = '';
    if ($('#password').val() == '') {
        words = "Password";
    }
    if ($('#username').val() == '') {
        words = "Username";
    }

    if (!(words == '')) {
        alert(words + " cannot be empty! ");
        return false;
    }


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
                alert("Login success! ");
                location.href = "home_page.jsp";
            } else {
                alert(data + ": Please check your user info.");
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
                $('#register-button').attr('disabled', true);
            } else {
                $('#registerInfo').text("");
                $('#register-button').attr('disabled', false);
            }
        }
    });
}

function registerSubmit() {
    //empty??
    var words = '';
    if (!(document.getElementById("check").checked)) {
        alert("Please agree the terms and policy! ");
        return false;
    }
    if ($('#password').val() === '') {
        words = "Password";
    }
    if ($('#email').val() === '') {
        words = "Email";
    }
    if ($('#username').val() === '') {
        words = "Username";
    }

    if (!(words === '')) {
        alert(words + " cannot be empty! ");
        return false;
    }
    // alert();


    //valid email???
    var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if (pattern.test($('#email').val()) == false) {
        alert("Email not valid");
        return false;
    }
    console.log($('#password1').val() + " " + $('#password').val())
    //psd match????
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
        },
        success: function (data) {
            $("#register-form").submit();
            alert("Register success!");
            return true;
        }
    });
    return false;
}
