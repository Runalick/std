package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.STDDAO;
import dto.STDDTO;

@WebServlet("*.std")
public class STDController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		STDDAO dao = new STDDAO();
		try {
			if (uri.equals("/add.std")) {
				String name = request.getParameter("name");
				int kor = Integer.parseInt(request.getParameter("kor"));
				int eng = Integer.parseInt(request.getParameter("eng"));
				int math = Integer.parseInt(request.getParameter("math"));
				dao.insert(new STDDTO(0, name, kor, eng, math, null));
				response.sendRedirect("index.jsp");
				
			}else if (uri.equals("/delete.std")) {
				
				int sid = Integer.parseInt(request.getParameter("sid"));

				dao.del(sid);
				response.sendRedirect("/index.jsp");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.html");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
