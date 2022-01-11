package day9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
흐름 : form.jsp에서 command가 'calculate'
	--> controller에서 command가 'calculate'이므로
					  CalAction의 execute()를 호출.
 */
public class CalAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int result = num1 + num2;
		
		RequestDispatcher rd = request.getRequestDispatcher("Controller?command=result");
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("result", result);
		rd.forward(request, response);
	}
}










