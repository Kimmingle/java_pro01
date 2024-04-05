package org.pungnam.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.pungnam.dao.NoticeDAO;
import org.pungnam.dto.Notice;


@WebServlet( "/NotiList.do")
public class NoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public NoticeListCtrl() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// a태그로 들어온놈
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		NoticeDAO dao = new NoticeDAO();  //다오에서 메서드 가져옴
		
		
		
		//setAttricute써서 뷰로 보낼거임 
		List<Notice> notiList = new ArrayList<>();
		//어디로 보낼지 목적지 정해줌
		notiList = dao.getNoticeList();
		
		request.setAttribute("notiList", notiList);
		
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeList.jsp");
		view.forward(request, response);
	
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// 폼으로 들어온놈
//		doGet(request, response);
//	}

}
