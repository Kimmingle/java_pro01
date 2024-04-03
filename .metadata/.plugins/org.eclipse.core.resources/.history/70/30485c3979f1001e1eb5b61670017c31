package org.pungnam.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.pungnam.dto.Notice;
import org.pungnam.dto.Qna;


@WebServlet("/test01")   //url 매핑 포트번호 '8091/'하면 이곳으로 들어옴..
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Main() {
        super();
    }

	
    //service아니면 doget
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { //    http://127.0.1:8091은 저장하면 더 편함
		String author ="돌아온 포켓몬 김민아";
		
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		application.setAttribute("realPath", realPath);
		
		List<Notice> latestNotiList = new ArrayList<>();
		List<Qna> latestQnaList = new ArrayList<>();
		
//		request.setAttribute("latestNotiList", latestNotiList);
//		request.setAttribute("latestQnaList", latestQnaList);
		
		request.setAttribute("author", author);
		request.setAttribute("exo1", "/WEB-INF/imges/exo1.jpg");
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");  //목적지 정함
		view.forward(request, response);
		
	}
}
