package org.pungnam.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.pungnam.dao.MemberDAO;


@WebServlet("/DelMember.do")
public class DelMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DelMemberCtrl() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");  //id 파라미터로 받음(어디서 받아오는거?)
		//id 받고 다오 호출해서 삭제 memberOut(id)
		MemberDAO dao = new MemberDAO();  //다오 호출
		int cnt = dao.memberOut(id);
		HttpSession session = request.getSession();  //로그아웃을 하지않고 탈퇴를 하기 때문에 세션이 아직 남아있음
		
		if (cnt > 0) {  //정상처리
			session.invalidate(); //세션 날리고
			response.sendRedirect("/test01");//메인으로 다시 감
		} else {  //아니면
			response.sendRedirect("/EditMember.do?id="+id);  // 다시 이 서블릿으로 돌아옴
		}
	}
}
