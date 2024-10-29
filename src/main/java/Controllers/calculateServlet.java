package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class calculateServlet
 */
@WebServlet("/calculateServlet")
public class calculateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public calculateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int principal = Integer.parseInt(request.getParameter("principal"));
		int I_rate = Integer.parseInt(request.getParameter("rate"));
		int time = Integer.parseInt(request.getParameter("time"));
		
		double interest = (principal * I_rate * time) / 100;
		
		PrintWriter pw = response.getWriter();
//		pw.println("The intrest of the Loan is: "+ interest);
		
		 // Set attributes to pass to result page
        request.setAttribute("principal", principal);
        request.setAttribute("rate", I_rate);
        request.setAttribute("time", time);
        request.setAttribute("interest", interest);

        // Forward to result.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
		
		
	}

}
