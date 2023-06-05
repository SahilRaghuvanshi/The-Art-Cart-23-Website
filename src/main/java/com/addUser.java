package com;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addUser")
public class addUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String email="",password="",mobile="",name="";
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		User user = new User();
		email=req.getParameter("emailid");
		password=req.getParameter("password");
		mobile=req.getParameter("mobile");
		name=req.getParameter("name");
		
		
		if(!email.contentEquals("")) {
			user.emailid=email;
			user.password=password;
			user.name=name;
			user.mobile=mobile;
			try {
				UserDao.insert(user);
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				rd.forward(req, res);
				
			} catch (Exception e1) {
				e1.printStackTrace();
			}		
		}
	}
}
