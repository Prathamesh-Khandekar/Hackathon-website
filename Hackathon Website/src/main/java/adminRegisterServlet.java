

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminRegisterServlet
 */
@WebServlet("/adminRegisterServlet")
public class adminRegisterServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public adminRegisterServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		request.getRequestDispatcher("adminRegister.jsp").forward(request, response);
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		String contact = request.getParameter("contact");
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","Pratham@9191");
			// Check if admin is already registered
			PreparedStatement checkStatement = con.prepareStatement("SELECT admin_registered FROM adminRegistration");
			ResultSet checkResult = checkStatement.executeQuery();

			if (checkResult.next()) {
			    // Admin already registered, display error message
				  request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else {
				PreparedStatement pst = con.prepareStatement("insert into adminRegistration(username,password,contact,admin_registered) values(?,?,?,?)");
				pst.setString(1, uname);
				pst.setString(2, password);
				pst.setString(3, contact);
				pst.setInt(4, 1);
				int rowCount = pst.executeUpdate();
				if(rowCount>0) {
					request.setAttribute("status", "success");
				}
				else {
					request.setAttribute("status", "failed");
				}
				request.getRequestDispatcher("adminLogin.jsp").forward(request, response);		
			  }
		} catch (Exception e) {
			// TODO: handle exception
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
