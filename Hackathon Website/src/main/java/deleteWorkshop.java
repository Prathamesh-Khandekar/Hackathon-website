

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class deleteWorkshop
 */
@WebServlet("/deleteWorkshop")
public class deleteWorkshop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteWorkshop() {
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
		String workshop_title = request.getParameter("workshop_title");
		PrintWriter out = response.getWriter();
		out.println(workshop_title);
		out.println("done");
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","Pratham@9191");
			out.println("done");
			PreparedStatement pst = con.prepareStatement("delete from workshops where workshop_title=(?)");
			pst.setString(1, workshop_title);
			int rowCount = pst.executeUpdate();
			if(rowCount>0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}	
//			request.getRequestDispatcher("addWorkshops.jsp").forward(request, response);	
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
