package com.codinbox.web.servlet;

import java.io.IOException;

import com.codingbox.web.dao.userDAO;
import com.codingbox.web.dto.userDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class joinservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		String username = req.getParameter("username");
		String userphone = req.getParameter("userphone");
		
		userDTO udto = new userDTO();
		udto.setUserid(userid);
		udto.setUserpw(userpw);
		udto.setUsername(username);
		udto.setUserphone(userphone);
		
		userDAO udao = new userDAO();
		boolean check = udao.join(udto);
		if(check){
			//회원가입 성공
		} else {
			//회원가입 실패
		}
	}

}
