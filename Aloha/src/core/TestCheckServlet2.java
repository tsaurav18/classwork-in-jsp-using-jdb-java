package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestCheckServlet2
 */
@WebServlet("/TestCheckServlet2")
public class TestCheckServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] ucity = request.getParameterValues("city");
		String str = "<html>";
		if(ucity!=null){
		for (int i=0; i<ucity.length; i++) {
		str += "Selected value: " + ucity[i] + "<br>"; }
		str += "</html>";
		PrintWriter out = response.getWriter();
		out.print(str);
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
