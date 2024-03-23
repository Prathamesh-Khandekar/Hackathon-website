<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Account Verification</title>
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
            margin: 30px auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="email"]{
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
    <h1>Verify Account</h1>
    <form action="userVerify" method="post" >
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <div>
        <button type="submit">Verify account</button>
        </div>

    </form>
    <form action="userLogin.jsp">
         <div class="login">
             <p>Already have an account?</p>
             <a><button type="submit">Login</button></a>
         </div>
     </form>
</body>
</html>