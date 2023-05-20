<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <% String error = request.getParameter("error");
    if (error != null) {
        %>
    <div class="container mt-2">
        <div class="alert alert-danger" role="alert">
            Incorrect email and password!
        </div>
    </div>
    <%
        }
    %>
    <div class="container mt-2">
        <div class="text-bg-light p-3">
        <h2>Login Page</h2>
        </div>
        <div class="mt-2 p-3">
        <form action="/login" method="post">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleFormControlTextarea1" name="password"></input>
            </div>
            <button class="btn btn-success">Login</button>
        </form>
        </div>
    </div>
</body>
</html>
