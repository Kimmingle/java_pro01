package org.pungnam.ctrl.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.pungnam.dao.MemberDAO;


@WebServlet("/IdCheck.do")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public IdCheckCtrl() {
        super();
    }

	/**
	 * 아이디 중복검사- id가 있는지 다오에 넘겨서 확인할거임
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");   //id 넘겨받고 
		boolean pass = false;
		MemberDAO dao = new MemberDAO();   //다오 객체 생성
		pass = dao.idCheck(id);   //id를 넘겨받아서 멤버 정보 주는 메서드였나
		
		
//		if (mem != null) {  		//여기서 null검사를 왜 못함?
//			pass = false;
//		} else {  //회원이 이미 있음
//			pass = true;
//		}
		
		JSONObject json = new JSONObject();    	// json표준을 jar에 넣어줘야함 
		json.put("result", pass);		           	//key와 value -map?
		PrintWriter out = response.getWriter();   //저번에 만들었던 출력을 위한 out객체 만들어주기 
		out.println(json.toString()); 	  	      //toString으로 하나의 문자열로 바꿔서 보내야받을 수 있음
		
	}
}