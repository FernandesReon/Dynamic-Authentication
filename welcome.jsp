<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" type="text/css" href="styles.css">
        <title>Welcome-Page</title>
    </head>

    <body>
        <% if (session !=null && session.getAttribute("username") !=null){ String username=(String)
            session.getAttribute("username"); %>
            <div class="welcome-container">
                <h1>Greetings <%=username%>
                </h1>
                <p>Welcome to our fun corner of the web!.</p>
                <p>We've whipped up this site using cool technologies like HTML, CSS, JSP, Servlet, JDBC, and MySQL</p>
                <p>It's a place to unwind, have a good laugh, and enjoy some lighthearted content.</p>
                <p>Whether you're a tech enthusiast or just here for the fun vibes, we hope you have a fantastic time
                    exploring,
                    our</p>
                <p>Digital Playground</p>
                <p>So, kick back, click around, and let the good times roll out.</p>
                <p>Feel free to stay as long as you like, and when you're ready, you can
                <p>"Logout successful. Have a great day!"</p>
                <a href="logout" class="logout">Logout</a>

            </div>
            <% } else{ response.sendRedirect("login.jsp"); } %>
    </body>

    </html>