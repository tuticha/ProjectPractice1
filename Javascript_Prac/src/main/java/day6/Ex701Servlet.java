package day6;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex701Servlet")
public class Ex701Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		int sum = a + b;
		
		RequestDispatcher rd = request.getRequestDispatcher("W15_day4/Ex701Result.jsp");
								//왜, response가 아니고 request일까?(집에 가서 이해)
		request.setAttribute("sum", sum);
		request.setAttribute("a", a);
		request.setAttribute("b", b);
								//왜, response가 아니고 request일까?(집에 가서 이해)
		
		rd.forward(request, response); //forward방식
									//왜, response 객체의 참조값도 전달하는 것일까?(집에 가서 이해)
		//response.sendRedirect("Ex701Result.jsp");//redirect방식
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
