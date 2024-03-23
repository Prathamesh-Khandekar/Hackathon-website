<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Database Records</title>
    <style>
    body{
	margin: 0;
	padding: 20px;    
    }
    h1{
        text-align:center;
    }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
        }
        
    .container{
        display:flex;
        justify-content:center;
    }
    button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
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
    <h1>All Records</h1>
    <div class="container">
    <table>
        <thead>
            <tr>
                <th>Team id</th>
                <th>Team Name</th>
                <th>Member1 Name</th>
                <th>Member2 Name</th>
                <th>Email</th>
                <th>Contact Number</th>
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
                    String query = "SELECT * FROM registration";
                    ResultSet result = statement.executeQuery(query);

                    // Iterate through the results and display each row
                    while (result.next()) {
                        %>
                        <tr>
                            <td><%= result.getString("team_id") %></td>
                            <td><%= result.getString("team_Name") %></td>
                            <td><%= result.getString("member1_Name") %></td>
                            <td><%= result.getString("member2_Name") %></td>
                            <td><%= result.getString("mail_id") %></td>
                            <td><%= result.getString("contact") %></td>
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
</body>
</html>
