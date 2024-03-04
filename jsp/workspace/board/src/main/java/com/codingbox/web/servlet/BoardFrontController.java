package com.codingbox.web.servlet;

import java.io.IOException;

import com.codingbox.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		String requestRUI = req.getRequestURI();
		ActionForward forward = null;
		
		//여기에 작성
		switch(requestRUI) {
		case "/board/BoardWrite.bo":
			forward = new ActionForward(true, "/board/boardwrite.jsp");
			break;
		case "/board/BoardList.bo":
			forward = new BoardListAction().execute(req,resp);
			break;
		}
		
		// 페이지 이동에 대한 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {	// Redirect 방식
				resp.sendRedirect(forward.getPath());
			} else {						// forward 방식
				req.getRequestDispatcher(forward.getPath())
					.forward(req, resp);
			}
		}
		
	}
}











