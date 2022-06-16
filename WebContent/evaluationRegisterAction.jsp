<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="evalution.EvalutionDTO" %>
<%@ page import="evalution.EvalutionDAO" %>
<%@ page import="java.io.PrintWriter" %>

<% 
	request.setCharacterEncoding("UTF-8");
 	String userID= null;
		if(session.getAttribute("userID") !=null){
			userID =(String) session.getAttribute("userID");
		}
 	
	String Myname =null;
	String Because =null;
	int Startyear =0;
	String TimeDivide =null;
	String State =null;
	String EvaluationTitle =null;
	String EvaluationContent =null;
	String TotalScore =null;
 	
 	if(request.getParameter("Myname") != null)  {
 		Myname = request.getParameter("Myname");
 	}
 	
 	if(request.getParameter("Because")  != null)  {
 		Because = request.getParameter("Because");
 	}
 	
 	if(request.getParameter("Startyear") != null)  {
 		try{
 			Startyear = Integer.parseInt(request.getParameter("Startyear"));
 		} catch (Exception e){
 			System.out.println("시작 연도 데이터 오류");
 		}
 	}
 	
 	if(request.getParameter("TimeDivide")!= null)  {
 		TimeDivide = request.getParameter("TimeDivide");
 	}
 	
 	if(request.getParameter("State")!= null)  {
 		State = request.getParameter("State");
 	}
 	
 	if(request.getParameter("EvaluationTitle")!= null)  {
 		EvaluationTitle = request.getParameter("EvaluationTitle");
 	}
 	
 	if(request.getParameter("EvaluationContent")!= null)  {
 		EvaluationContent = request.getParameter("EvaluationContent");
 	}
 	
 	if(request.getParameter("TotalScore")!= null)  {
 		TotalScore = request.getParameter("TotalScore");
 	}

 	if (Myname == null || Because == null || Startyear == 0  || TimeDivide ==null ||
 			State == null || EvaluationTitle == null || EvaluationContent ==null || TotalScore ==null ||	
 			EvaluationTitle.equals("") || EvaluationContent.equals("")) {
 		PrintWriter script = response.getWriter();
	  	script.println("<script>");
	  	script.println("alert('입력이 안 된 사항이 있습니다')");
	  	script.println("history.bakc()");
	  	script.println("</script>");
	  	script.close();
	  	return;
	  } 
 	EvalutionDAO evalutionDAO = new EvalutionDAO();
	 int result = evalutionDAO.write(new EvalutionDTO(0, userID ,Myname, Because, Startyear, 
			 TimeDivide, State, EvaluationTitle, EvaluationContent, TotalScore ));
 		if(result == -1){
 			PrintWriter script = response.getWriter();
 			  script.println("<script>");
 			  script.println("alert('강의 평가 등록 실패했습니다')");
 			  script.println("history.back()");
 			  script.println("</script>");
 			 script.close();
		 	  return;
 		}
 		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
			script.close();
		 	 return;
 		}
%>