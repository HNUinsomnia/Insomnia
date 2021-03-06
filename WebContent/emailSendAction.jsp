<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.mail.Transport" %> 
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.Address" %>    
<%@ page import="javax.mail.internet.InternetAddress" %>  
<%@ page import="javax.mail.internet.MimeMessage" %>  
<%@ page import="javax.mail.Session" %>  
<%@ page import="javax.mail.Authenticator" %> 
<%@ page import="java.util.Properties" %>    
<%@ page import="insomnia.UserDAO" %>
<%@ page import="util.SHA256" %>
<%@ page import="util.Gmail" %>
<%@ page import="java.io.PrintWriter" %>
<% 
	UserDAO userDAO =new UserDAO();
	String userID =null;
	if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	 if(userID == null){
	 	  PrintWriter script = response.getWriter();
	 	  script.println("<script>");
	 	  script.println("alert('로그인 해주세요');");
	 	  script.println("location.href = 'login.jsp'");
	 	  script.println("</script>");
	 	  script.close();
	 	  return;
		  } 
		boolean emailChecked = userDAO.getUserEmailChecked(userID);
		if(emailChecked == true) {
 			PrintWriter script = response.getWriter();
 			  script.println("<script>");
 			  script.println("alert('이미 인증된 아이디입니다')");
 			  script.println("location.href = 'main.jsp'");
 			  script.println("</script>");
 			 script.close();
 		 	  return;
 		}
		
		String host = "http://localhost:8080/insomnia/";
		String from ="971023als@gmail.com";
		String to =userDAO.getUserEmail(userID);
		String subject ="강의 평가를 위한 이메일 인증 메일입니다";
		String content ="다음 링크에 접속하여 이메일 인증을 진행하세요" +
			"<a href='" + host + "emailCheckAction.jsp?code=" + new SHA256().getSHA256(to) +"'>이메일 인증하기</a>";
		
			Properties p = new Properties();
			p.put("mail.smtp.user", from);
			p.put("mail.smtp.host", "smtp.googlemail.com");
			p.put("mail.smtp.port", "456");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.debug", "true");
			p.put("mail.smtp.socketFactory.port", "465");
			p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLsocketFactory");
			p.put("mail.smtp.socketFactory.fallback", "false");
			
			try{
				Authenticator auth = new Gmail();
				Session ses = Session.getInstance(p, auth);
				ses.setDebug(true);
				MimeMessage msg =new MimeMessage(ses);
				msg.setSubject(subject);
				Address fromAddr = new InternetAddress(from);
				msg.setFrom(fromAddr);
				Address toAddr = new InternetAddress(to);
				msg.addRecipient(Message.RecipientType.TO, toAddr);
				msg.setContent(content, "text/html;charset=UTF8");
				Transport.send(msg);
			} catch(Exception e){
				e.printStackTrace();
				PrintWriter script = response.getWriter();
	 			  script.println("<script>");
	 			  script.println("alert('오류가 발생했습니다.')");
	 			  script.println("history.back()");
	 			  script.println("</script>");
	 			 script.close();
	 		 	  return;
			}
 %>
	 		 		<!DOCTYPE html>
	 		 		<html>
	 		 		<head>
	 		 		<meta name="viewport" content="width= device-width", initial-scale="1">
	 		 		<link rel="stylesheet" href="css/bootstrap.css">
	 		 		<link rel="stylesheet" href="css/custom.css">
	 		 		<title>불면증은 냅두면 불어요</title>
	 		 		</head>
	 		 		<body>
	 		 		  <nav class="navbar navbar-expand-lg navbar-light bg-light">
	 		 		  <a class="navbar-brand" href="main.jsp">불면증은 냅두면 불어요</a>
	 		 		  <a class="navbar-brand text-secondary" href="Submit3.jsp">자가진단</a>
	 		 		  <a class="navbar-brand text-secondary" href="cure.jsp">간단한 치료법</a>
	 		 		  <a class="navbar-brand text-secondary" href="bbs.jsp">게시판</a>
	 		 		  <div class="dropdown">
	 		 		   <button class="btn btn-secondary dropdown-toggle"
	 		 		           type="button" id="dropdownMenuButton" 
	 		 		           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">접속하기
	 		 		   </button>
	 		 		   <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
	 		 		    <a class="dropdown-item" href="login.jsp">로그인</a>
	 		 		    <a class="dropdown-item" href="join.jsp">회원가입</a>
	 		 		   </div>
	 		 		  </div>
	 		 		 </nav>
	 		 		 <section class= "container mt-3" style="max-width: 560px;">
	 		 		 <div class="alert alert-success mt-4 " role="alert">
	 		 		 	이메일 주소 인증 메일이 전송되었습니다. 회원 가입시 입력했던 이메일에 들어가서 인증해주세요
	 		 		 </div>
	 		 		 </section>
	 		 		  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	 		 		 <script src="js/bootstrap.js"></script>
	 		 		</body>
	 		 		</html>