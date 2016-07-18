package ua.mycompany.ronaldo173.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ua.mycompany.ronaldo173.mvc.dto.User;
import ua.mycompany.ronaldo173.mvc.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		LoginService loginService = new LoginService();
		boolean isAuthenticate = loginService.authenticate(userId, password);

		if (isAuthenticate) {
			User user = loginService.getUserDetails(userId);
			System.out.println("\n");
			System.out.println(userId);
			System.out.println(user);
			// request.getSession().setAttribute("user", user);
			request.setAttribute("user", user);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("success.jsp");

			requestDispatcher.forward(request, response);
		} else {
			response.sendRedirect("login.jsp");
		}

	}

}
