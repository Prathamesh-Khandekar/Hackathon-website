

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userLoginServlet
 */
@WebServlet("/userLoginServlet")
public class userLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Connection con=null;
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","Pratham@9191");

			PreparedStatement pst = con.prepareStatement("select *from users where username=(?)");
			pst.setString(1, username);
			ResultSet res = pst.executeQuery();
			if(res.next()) {
				String uname = res.getString("username");
				String pass = res.getString("password");
				PrintWriter out = response.getWriter();
				out.println(uname);
				out.println(pass);
		        if(username.equals(uname) && password.equals(pass)){
		        	request.getRequestDispatcher("index.jsp").forward(request, response);
		        }
		        else {
		        	request.getRequestDispatcher("userLogin.jsp").forward(request, response);
		        }	
			}

        }catch(Exception e) {
        	e.printStackTrace();
        }
	}

}
