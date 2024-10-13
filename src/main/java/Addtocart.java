

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

public class Addtocart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addtocart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stud
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);		
		String create="create table if not exists product(pid int NOT NULL AUTO_INCREMENT,pname varchar(20),pdesc varchar(50),pamt double,pquant int,primary key (pid));";
		PrintWriter out=response.getWriter();
		try
		{
			String id=request.getParameter("prodId");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/handicraft","root","123789");
			Statement stmt=con.createStatement();
			stmt.executeUpdate(create);
			
			ResultSet rs=stmt.executeQuery("select * from product where pid="+id+";");
			
			if(rs.next())
			{
				String pname=rs.getString(2).replaceAll("\\s", "%");
				String pdesc=rs.getString(3).replaceAll("\\s", "%");     //replacing whitespace as whitespace not allowed in cookies
				String pamt=rs.getString(4);
				String pquant=rs.getString(5);
				
				HttpSession session = request.getSession(true);
				String sessionId = session.getId();
				
				Cookie pnm=new Cookie("pName",pname);
				Cookie pdes=new Cookie("pDesc",pdesc);
				Cookie pamnt=new Cookie("pAmount",pamt);         //creating cookies
				Cookie quant=new Cookie("pQuant",pquant);
				
				pnm.setMaxAge(60*60);
				pdes.setMaxAge(60*60);
				pamnt.setMaxAge(60*60);
				quant.setMaxAge(60*60);       
				
				response.addCookie(pnm);
				response.addCookie(pdes);
				response.addCookie(pamnt);          //adding cookies
				response.addCookie(quant);
				
				 Cookie sessionCookie = new Cookie("sessionId", sessionId);
			     sessionCookie.setMaxAge(60 * 60); // Set the cookie's max age as needed
			     response.addCookie(sessionCookie);
				
				response.setContentType("text/html");
				
				response.sendRedirect("cart.jsp");
				
				Cookie[] cookies=request.getCookies();
				
					if (cookies != null) {
		            // Cookies are present in the request
		            out.println("Cookies are enabled.");
		        } else {
		            // No cookies in the request
		        	out.println("Cookies are disabled.");
		        }
					response.getWriter().println("<h2> "+cookies[0].getValue().replaceAll("%"," ")+"</h2>");
				for(int  i=0;i<cookies.length;i++)
					response.getWriter().println("<h2> "+cookies[i].getValue().replaceAll("%"," ")+"</h2>");
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
	}
}
