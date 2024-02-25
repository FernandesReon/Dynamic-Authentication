<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles.css">
        <title>Registration</title>
    </head>

    <body>
        <main>
            <div class="register-container">
                <form action="register" method="post">
                    <div class="navigation-links">
                        <a href="login.jsp">Login</a>
                        <a href="index.html">Home</a>
                    </div>

                    <h1>Sign Up</h1>
                    <label>
                        Username:<br><input type="text" name="username" placeholder="Your name" required />
                    </label><br><br>
                    <label>
                        Email Address:<br><input type="email" name="email" placeholder="Your Email" required />
                    </label><br><br>
                    <label>
                        Password:<br><input type="password" name="password" placeholder="Password" required />
                    </label><br><br>
                    <label>
                        Confirm Password:<br><input type="password" name="confirm" placeholder="Confirm your password"
                            required />
                    </label><br><br>

                    <button name="register-btn">Register</button>
                </form>
                <% String error=request.getParameter("error"); if (error !=null && error.equals("1")){%>
                    <p style="color: red">Enter username and password correctly</p>
                    <%}%>
            </div>
        </main>
    </body>

    </html>