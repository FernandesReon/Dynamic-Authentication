<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <title>Login</title>
</head>

<body>
<main>
    <div class="container">
        <a href="index.html">Home</a>
        <form action="login" method="post">
            <h1>Login</h1>
            <p>Doesn't have an account yet? <a href="register.jsp">Sign Up</a></p>
            <label>
                Username<br><input type="text" name="username"  placeholder="Enter Username" required/>
            </label><br><br>
            <label>
                Password<br><input type="password" name="password" placeholder="Enter Password" required/>
            </label><br><br>
            <label>
                <input type="checkbox" name="Remember me" required/>Remember me
            </label><br><br>
            <button type="submit">Login</button>
        </form>
        <%
            String error = request.getParameter("error");
            if (error != null && error.equals("1")){%>
        <p style="color: red">Enter username and password correctly</p>
        <%}%>

        <%
            String registration = request.getParameter("registration");
            if (registration != null && registration.equals("success")){%>
        <p style="color: green;">Registration successful</p>
        <%}%>
    </div>
</main>
</body>
</html>