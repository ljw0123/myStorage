package com.codingbox.web.servlet;

import java.util.List;

import com.codingbox.web.action.Action;
import com.codingbox.web.action.ActionForward;
import com.codingbox.web.dao.BoardDAO;
import com.codingbox.web.dto.BoardDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		int totalCnt = bdao.getBoardCnt();
		
		//현재 페이지 넘겨받기
		String temp = request.getParameter("page");
		int page = 0;
		page = temp == null ? 1 : Integer.parseInt(temp);
		
		int pageSize = 10;
		int endRow = page * 10;		//1페이지면 : 10, 4페이지면 : 40
		int startRow = endRow - 9;	//1페이지면 : 1, 4페이지면 : 31
		
		// 1 2 .. 10 : 1, 11 12 .. 20 : 11
		int startPage = (page-1)/pageSize * pageSize+1;
		// 1 2 .. 10 : 10, 11 12 .. 20 : 20
		int endPage = startPage + pageSize -1 ;
		int totalPage = (totalCnt-1)/pageSize+1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		//if(temp == null) {
		//	page = 1;
		//} else {
		//	page = Integer.parseInt(temp);
		//}
		
		request.setAttribute("boardList", bdao.getBoardList(startRow, endRow));
		request.setAttribute("totalCnt", totalCnt);
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
        forward.setRedirect(false);
        forward.setPath(request.getContextPath() + "/board/boardlist.jsp");
		
		return forward;
	}

}