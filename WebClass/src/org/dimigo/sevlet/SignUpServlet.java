package org.dimigo.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json; charset=utf-8");
//		response.setContentType("text/html; charset=utf-8");
		
//		JsonObject json = new JsonObject();
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
	    String pwd = request.getParameter("pwd");
	    String name = request.getParameter("name");
	    String nickname = request.getParameter("nickname");
	    
	    System.out.printf("id : %s, pwd: %s name : %s nick : %s\n", id, pwd, name, nickname);
		
	    boolean result = true;
	    
	    out.print(result);
	    out.close();
	    
//	    request.setAttribute("result", result);
	    
	    /*
	    PrintWriter out = response.getWriter();

	    JsonObject jo = new JsonObject();

	    jo.addProperty("id", id);
	    jo.addProperty("pwd", pwd);
	    jo.addProperty("name", name);
	    jo.addProperty("nickname", nickname);
	    
	    System.out.println(jo.toString());
		
		
		
		// id, pwd 사용자 인증 체크
		boolean result = true;
		
		if(result) {
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("msg", "error");
			
	    	request.setAttribute("id", id);
	    	request.setAttribute("pwd", pwd);
	    	request.setAttribute("name", name);
	    	request.setAttribute("nickname", nickname);
	    	
			RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
		*/
	    
	    
	}

}
