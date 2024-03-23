<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
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

        input[type="text"],
        input[type="password"],
        input[type="email"] {
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
    <h1>User Registration</h1>
    <form action="userRegister" method="post" >
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
 <%--       <%
        Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","Pratham@9191");
			PreparedStatement pst = con.prepareStatement("select *from users where username=(?)");
			pst.setString(1, request.getParameter("username"));
			ResultSet checkResult = pst.executeQuery();

			if (checkResult.next()) {
			    // username already exist select other, display error message
			      request.setAttribute("usernameError", "This username is already taken.");
				  //request.getRequestDispatcher("index.jsp").forward(request, response);
			}
           }catch(Exception e){
        	   e.printStackTrace();
           }
        %> --%>   
        <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <div>
        <button type="submit">Register</button>
        </div>

    </form>
    <form action="userLogin.jsp">
         <div class="login">
             <p>Already registered?</p>
             <a><button type="submit">Login</button></a>
         </div>
     </form>
</body>
</html>