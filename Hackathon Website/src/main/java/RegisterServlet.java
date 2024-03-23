

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public RegisterServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String team_name = request.getParameter("team_name");
		String name1 = request.getParameter("name1");
		String name2 = request.getParameter("name2");
		String email = request.getParameter("email");
		String contactNumber = request.getParameter("contactNumber");
		PrintWriter out = response.getWriter();
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","Pratham@9191");
			PreparedStatement check = con.prepareStatement("select * from registration where team_Name=?");
			check.setString(1, team_name);
			ResultSet res = check.executeQuery();
			if(res.next()){
				out.println("Team name already taken please enter another one");
				request.setAttribute("teamNameError", "Team name already taken please enter another one");
				response.sendRedirect("teamRegister.jsp");
			}
			else {
			PreparedStatement pst = con.prepareStatement("insert into registration(team_Name,member1_Name,member2_Name,mail_id,contact) values(?,?,?,?,?)");
			pst.setString(1, team_name);
			pst.setString(2, name1);
			pst.setString(3, name2);
			pst.setString(4, email);
			pst.setString(5, contactNumber);
            
			int rowCount = pst.executeUpdate();
			if(rowCount>0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
