package org.pungnam.ctrl.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.pungnam.dao.MemberDAO;
import org.pungnam.dto.Member;


@WebServlet("/EditMember.do")
public class EditMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EditMemberCtrl() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		Member mem = dao.getMember(id);
		
		request.setAttribute("mem", mem);
		RequestDispatcher view = request.getRequestDispatcher("/member/memberInfo.jsp");  //EditMemberInfo.jsp로 목적지 정하기
		view.forward(request, response);
		
	}

}
