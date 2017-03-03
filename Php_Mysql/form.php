<!DOCTYPE html>
<html>
    <head>
        <title>Form Login</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <style>
            .wrapper{
                text-align: center;
               margin-top: 150px;
                margin-left: 500px;
                height: 450px;
                width: 350px;
                background: rgba(150,90,150,0.3);
                padding: 10px;
                
            }
            input{
                border-radius: 5px;
                padding: 10px;
                border: none;
                margin-top: 10px;
            }
            .button{
                cursor: pointer;
                background-color: orange;
            }
            
        </style>
    </head>
    <body>
        <form class="wrapper" name="loginForm" id="loginForm">
            <input type="text" id="name" name="name" placeholder="name"/><br><br>
            <input type="text" id="phone" name="phone" placeholder="mobile no"/><br><br>
            <input type="email" id="email" name="email" placeholder="email"/><br><br>
            <input class=" button" type = "submit" value="Submit" onclick="return successMsg();"/>
            <div id ="message"></div>
        </form>
        <script>
            function successMsg(){
                var name = document.getElementById("name").value;
                var email = document.getElementById("email").value;
                var phonenumber = document.getElementById("phone").value;
                 var emailpattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if (!emailpattern.test(email)) {
                    alert('Please provide a valid email address');
                    return false;
                }
                if (name == '' || email == '' || phonenumber == '') {
                    alert("Please enter values");
                    
                } else{
                var dataString = 'name=' + name + '&email=' + email + '&phone=' + phonenumber;
                $.ajax({
                    type: "POST",
                    url: "databaseconn.php",
                    data: dataString,
                    success: function(html) {
                        $("#message").text(html);
                        $('#loginForm')[0].reset();
                    },
                    
                    error: function(html){
                        console.log(html);
                    }
                });
                }
                return false; 
            }
        
        </script>
    </body>
</html>