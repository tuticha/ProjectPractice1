package day6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/Ex704_loginServlet")
public class Ex704_loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//테스트1. html단에서 보낸 데이터를 잘 받았는지?
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//System.out.println("dopost에서: "+ id + "," + pw);
		//테스트2. html단으로 결과를 보냈을 때 잘 전달되는가?
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		//로그인 성공: {"login_check":1}
		//로그인 실패: {"login_check":0}
		JSONObject obj = new JSONObject();
		obj.put("login_check", 1);
		out.print(obj);
	}

}
