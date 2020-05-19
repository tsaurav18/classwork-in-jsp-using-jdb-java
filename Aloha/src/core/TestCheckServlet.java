package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestCheckServlet
 */
@WebServlet("/TestCheckServlet")
public class TestCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] uspo = request.getParameterValues("sport");
				String str = "<html>";
				if(uspo!=null){
				for (int i=0; i<uspo.length; i++) {
				str += "Selected value: " + uspo[i] + "<br>"; }
				str += "</html>";
				PrintWriter out = response.getWriter();
				out.print(str);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
