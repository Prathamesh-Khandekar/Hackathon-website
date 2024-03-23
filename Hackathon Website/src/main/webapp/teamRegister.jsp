<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>
<section id="registration">
        <div class="container">
            <h2><a href="">Registration</a></h2>
            <form action="RegisterServlet" method="post" onsubmit="return submitForm()">
                <div class="form-group">
                    <label for="team_name">Team name:</label>
                    <input type="text" id="team_name" name="team_name" required>
                </div>
                <div class="form-group">
                    <label for="name1">Member1 name:</label>
                    <input type="text" id="name1" name="name1" required>
                </div>
                <div class="form-group">
                    <label for="name2">Member2 name:</label>
                    <input type="text" id="name2" name="name2" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="contactNumber">Contact number:</label>
                    <input type="text" id="contactNumber" name="contactNumber" required>
                </div>
                <button type="submit" class="btn">Submit</button>

            </form>
        </div>

    </section>
    <input type="hidden" id="teamNameError" value="<%= request.getAttribute("teamNameError")%>">
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <script>
function submitForm(event) {
  // Prevent default form submission
  event.preventDefault();
  var teamName = document.getElementById("teamNameError").value;
  if(teamName==="Team name already taken please enter another one"){
	  alert("Team name already taken please enter another one.");
  }
  var message = document.getElementById("status").value;
  // Display congratulations message
  if(message=== "success"){
	  console.log("ndone");
	  alert("Congratulations! Your team has been registered."); 
  }
  else{
	  console.log("not Done");
	  alert("Team registration failed.");
  }
  
}
</script>
</body>
</html>