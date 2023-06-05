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

@WebServlet("/addBuyer")
public class addBuyer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String fname="",lname="",street="",state="",city="",pincode="",date="",tag="";
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Buyer buyer = new Buyer();
		fname=req.getParameter("fname");
		lname=req.getParameter("lname");
		street=req.getParameter("streetname");
		state=req.getParameter("state");	
		city=req.getParameter("cityname");
		pincode=req.getParameter("pincode");
		tag=req.getParameter("tag");
		
		if(!fname.contentEquals("")) {
			buyer.fname=fname;
			buyer.lname=lname;
			buyer.street=street;
			buyer.state=state;
			buyer.city=city;
			buyer.pincode=pincode;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cn;
				cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb", "root", "system");
				 String sql = "UPDATE painting SET status=1 where tag=?";
				    PreparedStatement statement = cn.prepareStatement(sql);
				    statement.setString(1, tag);
				    statement.executeUpdate();
				BuyerDao.insert(buyer);
				RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
				rd.forward(req, res);
				
			} catch (Exception e1) {
				e1.printStackTrace();
			}		
		}
	}
}
