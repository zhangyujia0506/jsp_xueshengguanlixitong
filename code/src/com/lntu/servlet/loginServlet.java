package com.lntu.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lntu.model.userTable;
import com.lntu.service.userService;

public class loginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		userTable user = new userTable();
		user.setUsername(username);
		user.setPassword(password);
		try {
			if (new userService().valiUser(user)) {
                 HttpSession session=request.getSession();
                 session.setAttribute("user", user);
				response.sendRedirect("../main.jsp");
			}
			else
				response.sendRedirect("../login_error.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
	
	doPost(request, response);
	}
}
