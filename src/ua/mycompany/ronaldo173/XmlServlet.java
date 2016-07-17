package ua.mycompany.ronaldo173;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class XmlServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("XML Servlet get called");
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("<h3><i>XMLServlet get method</i></h3>");

		String userName = request.getParameter("userName");
		HttpSession session = request.getSession();
		ServletContext servletContext = request.getServletContext();
		String attributeName = "savedUserName";
		if (userName != null && userName != "") {
			session.setAttribute(attributeName, userName);
			servletContext.setAttribute(attributeName, userName);
		}
		writer.println("Get method: " + userName);

		writer.println("Session name: " + session.getAttribute(attributeName));
		writer.println("servletContext name: " + servletContext.getAttribute(attributeName));
		writer.println("<br>");
		writer.println("init param: " + this.getServletConfig());
		writer.println("<br>");
		writer.println(servletContext.getMajorVersion());
		writer.println("<br>");
		writer.println(servletContext.getMinorVersion());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		PrintWriter writer = resp.getWriter();
		String name = req.getParameter("userName");
		String fullName = req.getParameter("fullName");
		writer.println("Post method:  name:" + name);
		writer.println("fullname:" + fullName);

		String prof = req.getParameter("work");
		writer.println("work: " + prof);

		// String location = req.getParameter("location");
		String[] location = req.getParameterValues("location");
		writer.println("loc: " + Arrays.toString(location));
	}

}
