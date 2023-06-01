package logindata;

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


@WebServlet("/LoginDataBase")
public class LoginDataBase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginDataBase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			  response.setContentType("text/html");
			  String un=request.getParameter("uname");
			  String pass=request.getParameter("pass");
			  String repass=request.getParameter("repass");
			  
			  PrintWriter out=response.getWriter();
			  out.print("\n::User Name::"+un);out.print("<br/>");
			  out.print("\n::User Password::"+pass);out.print("<br/>");
			  out.print("\n::User Re Password::"+repass);
			  if(un.isBlank())
			  {
				     response.sendRedirect("SignUp.jsp?message=Input the user name");
			  }
			  else if(!pass.equals(repass))
			  {
				   response.sendRedirect("SignUp.jsp?message=Please input the same password and re-password");
			  }
			  else if(!un.isBlank() && pass.equals(repass))
			  {
				        
				  /*
				   * "insert into <tableName>(column1,column2)values(?,?)"
				   */
				  try
				  {
				    String url="";
				    String query="insert into login(User_Name,User_Password)values(?,?)";
				    Class.forName("com.mysql.jdbc.Driver");
				    Connection con=DriverManager.getConnection("mysql:jdbc://localhost:3306/login","root","");
				    PreparedStatement pstmt=con.prepareStatement(query);
				    pstmt.setString(1,un);
				    pstmt.setString(2,pass);
				    int result=pstmt.executeUpdate();
				    if(result==1)
				    {
					    System.out.println("No of the insert value::"); 
				    }
				    else
				    {
				    	System.out.println("Value not Store in Data Base::"); 
				    }
				  }
				  catch(SQLException e) {
					    System.out.println("Exception Occur in the program::"+e);
				  }
				  catch(Exception e) {
					    System.out.println("Exception Occur in the program::"+e);
				  }
			  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
