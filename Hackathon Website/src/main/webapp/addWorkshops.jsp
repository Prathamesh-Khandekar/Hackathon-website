<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add workshops</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
}

h1 {
	text-align: center;
}

 #workshop_form  {
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

input[type="text"], input[type="date"] {
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
    h1{
        text-align:center;
    }
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        padding: 5px;
    }
    #del{
       background-color:red;
       margin-left:20px;
    }
    .container{
        display:flex;
        justify-content:center;
    }
    #logout{
      background-color:red;
    }
    .logout{
      display:flex;
      justify-content:flex-end;
    }
</style>
</head>
<body>
     <header>
          <form action="logoutServlet" method="post">
          <input type="hidden" name="logout" value="true">
          <div class="logout">
              <button id="logout" type="submit">LOGOUT</button>
          </div>
          </form>
     </header>
	<h1>Add workshops</h1>
	<form action="workshopServlet" method="post" id="workshop_form">
		<div class="form-group">
			<label for="workshop_title">Workshop title:</label> <input
				type="text" id="workshop_title" name="workshop_title" required>
		</div>
		<div class="form-group">
			<label for="workshop_desc">Description:</label> <input type="text"
				id="workshop_desc" name="workshop_desc" required>
		</div>
		<div class="form-group">
			<label for="dates">Date:</label> <input type="date" id="dates"
				name="dates" required>
		</div>
		<button type="submit" class="btn">ADD</button>
	</form>
	<h1>Added workshops</h1>
<div class="container">
<div class="row">
<table>
    <thead>
        <tr>
            <th>Workshop Title</th>
            <th>Date</th>
            <th>Delete workshop</th>
        </tr>
    </thead>
    <tbody> 
        <%
                try {
                    // Connect to the database
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/hackathon", "root", "Pratham@9191");

                    // Prepare the query to select all records
                    Statement statement = connection.createStatement();
                    String query = "SELECT * FROM workshops";
                    ResultSet result = statement.executeQuery(query);

                    // Iterate through the results and display each row
                    while (result.next()) {
                        %>
                        <tr>
                            <td><%= result.getString("workshop_title") %></td>
                            <td><%= result.getString("dates") %></td>
                            
                            <form action="deleteWorkshop" method="post">
                            <input type="hidden" name="workshop_title" value="<%= result.getString("workshop_title") %>">
                            <td><button type="submit" class="btn" id="del">DELETE</button></td>
                            </form>
                        </tr>
                        <%
                    }

                    // Close resources
                    result.close();
                    statement.close();
                    connection.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
		          %>
    </tbody>
</table>
</div>
</div>
</body>
</html>
