

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class workshopServlet
 */
@WebServlet("/workshopServlet")
public class workshopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public workshopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String workshop_title = request.getParameter("workshop_title");
		String workshop_desc = request.getParameter("workshop_desc");
		String dates = request.getParameter("dates");
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","Pratham@9191");
			PreparedStatement pst = con.prepareStatement("insert into workshops(workshop_title,description,dates) values(?,?,?)");
			pst.setString(1, workshop_title);
			pst.setString(2, workshop_desc);
			pst.setString(3, dates);
			int rowCount = pst.executeUpdate();
			if(rowCount>0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			request.getRequestDispatcher("addWorkshops.jsp").forward(request, response);		
		} catch (Exception e) {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
