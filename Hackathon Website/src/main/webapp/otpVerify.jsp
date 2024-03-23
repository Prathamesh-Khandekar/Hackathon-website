<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify User</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        form {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            max-width: 400px;
            margin: 30px auto;
        }



        input[type="text"]{
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
     <span>We have sent OTP to your email address, please enter: </span>
     <form action="verifyCode" method="post">
        <input type="text" name="authcode">
        <div>
        <button type="submit" value="verify">Verify</button>
        </div>
     </form>
</body>
</html>