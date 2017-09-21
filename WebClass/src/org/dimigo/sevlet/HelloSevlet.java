package org.dimigo.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloSevlet
 */
@WebServlet(asyncSupported = true, description = "첫번째 서블릿", urlPatterns = { "/hello" })
public class HelloSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HelloSevlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//입력데이터 처리해 보아욧
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.printf("id: %s name:%s", id, name);
		
		//출력 데이터 Content type 설정
		response.setContentType("text/html; charset=utf-8"); //설정하고 getWriter로 얻어와야한다.
//		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("");
		out.println("<head>");
		out.println("<title>Sevlet Test</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello, Sevlet</h1>");
		out.println("<h1>둠칫 둠칫</h1>");
		out.println("<h2>id:" + id + "<br>name:" + name + "</h2>");
		out.println("</body>");
		out.close();
		
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("두 뽀스트");
		doGet(request, response);
	}
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		 //최초 메모리 로딩시 1회 호출
		 System.out.println("이닛 호출");
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		System.out.println("써비스 호출");
		super.service(arg0, arg1);
	}
	
	@Override
	public void destroy() {
		// 메코리에서 해제 시 호출됨
		// 서버를 중지시키거나, 호스가 변경된 경우 실행
		System.out.println("디스트로이! 악");
	}

}

