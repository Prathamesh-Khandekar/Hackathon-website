<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        h1{
            text-align:center;
        }
        form {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        input[type="tel"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 15px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Admin Registration</h1>
    <form action="adminRegisterServlet" method="post" >
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <label for="contact">Contact Number:</label>
        <input type="tel" id="contact" name="contact" pattern="[0-9]{10}" required>
        </div>
        <br>
        <div>
        <button type="submit">Register</button>
        </div>

    </form>
    <form action="adminLogin.jsp">
         <div class="login">
             <p>Already registered?</p>
             <a><button type="submit">Login</button></a>
         </div>
     </form>
</body>
</html>