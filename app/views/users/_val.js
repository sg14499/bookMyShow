
  $().ready(function () { 
    $("#new_user").validate({
    //adding rule
      rules: {
      "user[name]":{
        required: true,
        maxlength: 30,
        minlength: 4
      },
      "user[email]":{
        required: true,
        email: true
      },
      "user[password]":{
        required: true,
        minlength: 6
      },
      "user[password_confirmation]":{
        required: true,
        equalTo: "#user_password"
      }
      },
      // error messages
      messages: {
        "user[name]":{
          required: "name is required.",
          maxlength: "Username must be less than 30",
          minlength: "Username must be more than 4"
        },
        "user[mail]":{
          required: "Email is required",
          email: "Please enter a valid email address"
        },
        "user[password]":{
          required: "Password is required",
          minlength: "Password must be more than 6"
        },
        "user[password_confirmation]":{
          required: "Password confirmation is required",
          equalTo: "Password and password confirmation must be same"
        }
      }
    });

  });



