<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width= device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/custom.css">

		<style>
			ul {
				list-style: none;
			}
			
			.submit_Q {
				margin-top: 10px;
			}

			.submit_li {
				margin-left: 10px;
				margin-top: 10px;
			}

			.submit_li_a {
				padding-left: 20px;
				padding-top: 5px;
			}

			.submit_ul {
				display: inline;
				padding-right: 10px;
			}
			
			.button1 {
				margin-left: 50px;
				margin-bottom: 10px;
			}
		</style>


		<title>불면증은 냅두면 불어요</title>
	</head>

	<body>
		<nav class="navbar navbar-default">
  				<div class="navbar-header">
   				<button type="button" class="navbar-toggle collapsed"
    				data-topple="collapse" data-target="#bs-example-navbar-collapse-1"
    				aria-expanded="false">
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
   					</button>
   					<a class="navbar-brand" href="main.jsp">불면증은 냅두면 불어요</a>
  					</div>
  			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    		<ul class="nav navbar-nav">
     		<li><a href="Submit3.jsp">자가진단</a></li>
     		<li><a href="cure.jsp">수면/식/습관</a></li>
   			 </ul> 
    	<ul class="nav navbar-nav navbar-right">
     		<li class="dropdown">
     		<a href="#" class="dropdown-toggle"
      			data-toggle="dropdown" role="button" aria-haspopup="true"
      			aria-expanded="false">접속하기<span class="caret"></span></a>
    	 <ul class="dropdown-menu">
    	 
      		<li><a href="login.jsp">로그인</a></li>
      		<li><a href="join.jsp">회원가입</a></li>
   			</ul>
   			</li>   		
   			</ul>
  				
  			<ul class="nav navbar-nav navbar-right">
  			<li class="dropdown">
  			<a href="#" class="dropdown" role="button" aria-haspopup="true" 
  			aria-expanded="false">회원관리<span class="caret"></span></a>
   		<ul class= "dropdown-menu">
   			<li> <a href="logoutAction.jsp">로그아웃</a></li>
   			</ul>
   			</li>   		
   			</ul>
   			</div>
 </nav>
		<% 
			String arr[]={ "1-a. 잠들기 어렵다." , "1-b. 잠든 채로 있기 어렵다." , "1-c. 너무 일찍 일어난다." , "2. 당신의 수면 양상에 얼마나 만족하시나요?", "3. 당신의 수면 문제가 일상 기능을 어느 정도로 저해한다고 간주하나요? (예: 낮 시간의 피로, 업무/일상의 잡일을 할 때 기능을 발휘하는 능력, 집중력, 기분 등)", "4. 삶의 질을 저하시킨다는 점에서 당신의 수면 문제는 다른 사람들이 보기에 얼마나 뚜렷하다고 생각하십니까?" , "5. 당신의 현재 수면 문제에 대해 얼마나 걱정/고통 스럽습니까?" };
			String ans[]={ "전혀 없음" , "약간" , "중간 정도" , "심함" , "전혀 없음" };
			String ans1[]={ "매우 만족" , "만족" , "보통" , "불만족", "매우 불만족" }; 
			String ans2[]={ "전혀 저해되지 않음" , "약간 저해" , "어느 정도 저해" , "많이 저해" , "매우 많이 저해" }; 
			String ans3[]={ "전혀 뚜렷하지 않음" , "거의 뚜렷하지 않음" , "어느 정도 뚜렷함" , "많이 뚜렷함" , "매우 많이 뚜렷함" };
			int a=0;
			int b=0;
			int c=0;
			int d=0;
			int e=0;
			int f=0;
			int g=0;
			int selname=0;
			int sel=0;
		%>

			<form method="post" action="./SubmitReport.jsp">
				<ul>
					<li><h5>▶ <b>설문조사를 시작하겠습니다.</b></h5></li>
					<li>1. 당신의 불면증 문제(들)의 현재 심각성에 대해 표시해 주세요.</li>

					<li class="submit_li"><%= arr[0] %></li>
						<% for (String str : ans) { selname=sel + a; %>
						<li style="display: inline;" class="submit_li_a"><input type="radio" name="point1" value=<%=selname%>><label><%=str%></label></li>
						<% a +=1; } %>

					<li class="submit_li"><%= arr[1] %></li>
						<% for (String str : ans) { selname=sel + b; %>
						<li style="display: inline;" class="submit_li_a"><input type="radio" name="point2" value=<%=selname%>><label><%=str%></label></li>
						<% b +=1; } %>

					<li class="submit_li"><%= arr[2] %></li>
						<% for (String str : ans) { selname=sel + c; %>
						<li style="display: inline;" class="submit_li_a"><input type="radio" name="point3" value=<%=selname%>><label><%=str%></label></li>
						<% c +=1; } %>

					<li class="submit_Q"><%= arr[3] %></li>
						<% for (String str : ans) { selname=sel + d; %>
						<li style="display: inline; padding-left:20px"><input type="radio" name="point4" value=<%=selname%>><label><%=str%></label></li>
						<% d +=1; } %>
					
					<li class="submit_Q"><%= arr[4] %></li>
						<% for (String str : ans) { selname=sel + e; %>
						<li style="display: inline; padding-left:20px"><input type="radio" name="point5" value=<%=selname%>><label><%=str%></label></li>
						<% e +=1; } %>
					
					<li class="submit_Q"><%= arr[5] %></li>
						<% for (String str : ans) { selname=sel + f; %>
						<li style="display: inline; padding-left:20px"><input type="radio" name="point6" value=<%=selname%>><label><%=str%></label></li>
						<% f +=1; } %>

					<li class="submit_Q"><%= arr[6] %></li>
						<% for (String str : ans) { selname=sel + g; %>
						<li style="display: inline; padding-left:20px"><input type="radio" name="point7" value=<%=selname%>><label><%=str%></label></li>
						<% g +=1; } %>
				</ul>

				<input type="submit" value="설문조사결과" class="button1"/>
			</form>

			<form>
				<input type=button value="메인으로" OnClick="location='login.jsp'" class="button1">
			</form>

			<footer class="navbar navbar-default" style="margin-top : 10px">
                        <h5>여기에 상담 등록하시면 연락 드립니다.</h5>
                        <section class="contanter">
 	<select name= "lectureDivide" class="form-control mx-1 mt 2">
 	<option value="전체">전체</option>
 	<option value="불면증">불면증</option>
 	<option value="자가진단">자가진단</option>
 	<option value="기타">기타</option>
 	</select>
 	<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요." style="margin-top : 5px">
 	<button type="submit" class="btn btn-primary mx-1 mt-2" style="margin-top : 5px; margin-bottom : 5px"> 검색</button>
 	<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal" style="margin-top : 5px; margin-bottom : 5px">상담등록</a>
 	<a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal" style="margin-top : 5px; margin-bottom : 5px">신고</a>
 </section>
 <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
 	<div class="modal-dialog">
 		<div class="modal-content">
 			<div class="modal-header">
 				<h5 class="modal-title" id="modal">상담 등록 </h5>
 				<button type="button" class="close" data-dismiss="modal" aria-labal="close">
 					<span aria-hidden="true">&times;</span>
 				</button>
 			</div>
 			<div class="modal-body">
 				<form action="./evaluationRegisterAction.jsp" method="post">
 				<div class="form-row">
 					<div class="form-group col-sm-6">
 						<label> 이름</label>
 						<input type="text" name="myname" class="form-control" maxlength="20">
 					</div>
 					<div class="form-group col-sm-6">
 					<label> 자신이 생각하는 원인</label>
 						<input type="text" name="because" class="form-control" maxlength="20">
 					</div>
 					</div>
 				<div class="form-row">
 				<div class="form-group col-sm-4">
 				 	<label> 불면증 시작</label>
 						<select name="startyear" class="form-control">
 						 <option value="2001">2001</option>
 						   <option value="2002">2002</option>
 						    <option value="2003">2003</option>
 						    <option value="2004">2004</option>
 						    <option value="2005">2005</option>
 						      <option value="2006">2006</option>
 						       <option value="2007">2007</option>
 						        <option value="2008">2008</option>
 						         <option value="2009">2009</option>
 						          <option value="2010">2010</option>
 						           <option value="2011">2011</option>
 						            <option value="2012">2012</option>
 						            <option value="2013">2013</option>
 						            <option value="2014">2014</option>
 						            <option value="2015">2015</option>
 						            <option value="2016">2016</option>
 						            <option value="2017">2017</option>
 						            <option value="2018">2018</option>
 						            <option value="2019">2019</option>
 						            <option value="2020">2020</option>
 						            <option value="2021">2021</option>
 						            <option value="2022"selected>2022</option>
 						       </select>
 						       </div>
 						</div>
 						<div class="form-group col-sm-4">
 						<label> 자주 깨는 시간</label>
 							<select name="timeDivide" class="form-control">
 							<option value="11시" selected> 11시</option>
 								<option value="12시" > 12시</option>
 									<option value="1시" > 1시</option>
 										<option value="2시" > 2시</option>
 											<option value="3시" > 3시</option>
 												<option value="4시" > 4시</option>
 													<option value="5시" > 5시</option>
 														<option value="6시" > 6시</option>
 							</select>
 						</div>
 						<div class="form-group col-sm-4">
 						<label> 수면제 복용 </label>
 							<select name="State" class="form-control">
 							<option value="수면제 복용중" selected> 수면제 복용중</option>
 								<option value="지금은 복용 안함" > 지금은 복용 안함</option>
 									<option value="수면제 복용 안함" > 수면제 복용 안함</option>
 									</select>
 				</div>
 				<div class="form-group">
 					<label>제목</label>
 					<input type="text" name="evaluationTitle" class="form-control" maxlength="40">
 				</div>
 				<div class="form-group">
 					<label>내용</label>
 					<textarea name="evaluationContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
 				</div>
 				<div class="form-row">
 					<div class="form-group col-sm-3">
 					<label>수면제 대한 인식</label>
 					<select name="totalScore" class="form-control">
 					<option value="괜찮다" selected> 괜찮다</option>
 					<option value="문제 없는 것 같다." selected>문제 없는 것 같다.</option>
 					<option value="문제 있는 것 같다." selected>문제 있는 것 같다.</option>
 					<option value="중독성이 있어 보인다." selected>중독성이 있어 보인다.</option>
 					</select>
 					</div>
 				</div>
 				<div class="modal-footer">
 				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
 				<button type="submit" class="btn btn-primary">등록하기</button>
 				</div>
 				</form>
 				</div>
 			</div>
 		</div>
 	</div>
 <div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
 	<div class="modal-dialog">
 		<div class="modal-content">
 			<div class="modal-header">
 				<h5 class="modal-title" id="modal">신고하기 </h5>
 				<button type="button" class="close" data-dismiss="modal" aria-labal="close">
 					<span aria-hidden="true">&times;</span>
 				</button>
 			</div>
 			<div class="modal-body">
 				<form action="./reportAction.jsp" method="post">
 				<div class="form-group">
 					<label>신고 제목</label>
 					<input type="text" name="reportTitle" class="form-control" maxlength="40">
 				</div>
 				<div class="form-group">
 					<label>신고 내용</label>
 					<textarea name="reportContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
 				</div>
 				<div class="modal-footer">
 				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
 				<button type="submit" class="btn btn-danger" >신고하기</button>
 				</div>
 				</form>
 				</div>
 			</div>
 		</div>
 	</div>
 	</footer>
			<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
			<script src="js/bootstrap.js"></script>
			<script src="js/pooper.js"></script>
	</body>

	</html>

	<!-- 
설문표 출처
http://samsunghospital.com/dept/medical/diseaseSub03View.do?content_id=1761&DP_CODE=CIC&searchKey=%3F%3F%3F&hsts=%EA%B0%3F&hste=%3F%3F%3F&ds_code=D0001482
 -->