package net.pro.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.pro.beans.User;
import net.pro.models.RegistrationModel;

/**
 * Servlet implementation class Registratioon
 */
@WebServlet("/Registration")
public class Registratioon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String ATTR_USER = "user";
	private static final String ATTR_ERRORS = "errors";
	private static final String ATTR_RESULT = "result";

	private static final String VUE = "/WEB-INF/Registration.jsp";
	private static boolean current_link = true;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("current_link", current_link);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RegistrationModel regestrationModel = new RegistrationModel();
		User user = regestrationModel.register(request);

		request.setAttribute(ATTR_USER, user);
		request.setAttribute(ATTR_ERRORS, regestrationModel.getErrors());
		request.setAttribute(ATTR_RESULT, regestrationModel.getResult());

		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
