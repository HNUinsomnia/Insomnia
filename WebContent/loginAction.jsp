<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="insomnia.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class ="insomnia.User" scope = "page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>불면증은 냅두면 불어요</title>
</head>
<body>
 	<%
 		String userID= null;
 		if(session.getAttribute("userID") !=null){
 			userID =(String) session.getAttribute("userID");
 		}
 		if(userID != null){
			  session.setAttribute("userID", user.getUserID());
			  PrintWriter script = response.getWriter();
			  script.println("<script>");
			  script.println("alert('이미 로그인이 되어있습니다.')");
			  script.println("location.href = 'main.jsp'");
			  script.println("</script>");
		}
 		UserDAO userDAO =new UserDAO();
 		int	result = userDAO.login(user.getUserID(), user.getUserPassword());
 		if(result == 1){
 			  session.setAttribute("userID", user.getUserID());
 			  PrintWriter script = response.getWriter();
 			  script.println("<script>");
 			  script.println("location.href = 'main.jsp'");
 			  script.println("</script>");
 		}
 		else if(result == 0){
			PrintWriter outter = response.getWriter();
			outter.println("<script>");
			outter.println("alert('비밀번호가 틀립니다.');");
			outter.println("history.back()");
			outter.println("</script>");

		}
		else if(result == -1){
			PrintWriter outter = response.getWriter();
			outter.println("<script>");
			outter.println("alert('존재하지 않는 아이디입니다.');");
			outter.println("history.back()");
			outter.println("</script>");
		}
		else if(result == -2){
			PrintWriter outter = response.getWriter();
			outter.println("<script>");
			outter.println("alert('데이터베이스 오류가 발생했습니다.');");
			outter.println("history.back()");
			outter.println("</script>");
		}
 	%>
</body>
</html>