package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		String upass = request.getParameter("ps");
		String upass2 = request.getParameter("ps2");
		String unick = request.getParameter("nick");
		
		String str = "<html>Input Id:" + uid +"<br>";
		str+="Input pass:"+upass+"<br>";
		str+= "password(confirm):"+upass2+"<br>"; 
		str+= "input nickname:"+unick+"<br>"; 
		str+="</html>"; // <html>Kim</html>
		PrintWriter out = response.getWriter();
		out.print(str);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
