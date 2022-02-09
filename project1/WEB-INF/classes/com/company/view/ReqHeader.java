package com.company.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReqHeader
 */
@WebServlet("/Req")
public class ReqHeader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("request.getScheme() => "+request.getScheme()+"<br>");
		out.println("request.getRemoteAddr() => "+request.getRemoteAddr()+"<br>");
		out.println("request.getRequestURL() => "+request.getRequestURL()+"<br>");
		out.println("request.getRequestURI() => "+request.getRequestURI()+"<br>");
		out.println("request.getServletPath() => "+request.getServletPath()+"<br>");
		out.println("request.getServletContext() => "+request.getServletContext()+"<br>");
		out.println("request.getHeader(Accept) => "+request.getHeader("Accept")+"<br>");
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()) {
			String hd = headers.nextElement();
			out.println(hd+" => "+request.getHeader(hd)+"<br><br>");
		}
		
		out.println(request.getQueryString());
		out.println("</body>");
		out.println("</html>");
	}

}
