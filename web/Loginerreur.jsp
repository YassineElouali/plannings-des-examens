<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login Erreur</title>
    </head>
    <body>
        <!DOCTYPE html>
    <html >
        <head>
            <meta charset="UTF-8">
            <title>Login Error</title>
            <link rel="stylesheet" href="cssLogin/logincss.css"/>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

        </head>

        <body>
            <div class="body"></div>
            <div class="grad"></div>
            <div class="header">
                <div><span>EMSI</span><br>Marrakech</div>
            </div>
            <br>
            <form action="logincontroller" method="POST">
                <div class="login">
                    <input type="text" placeholder="username" name="username"><br>
                    <input type="password" placeholder="password" name="password"><br>
                    <input type="submit" value="Login">
                    <h2 class="error"> Sorry username or password error !</h2>

                </div>
            </form>
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


        </body>
    </html>

</body>
</html>