<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width= device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
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
 <div class ="card bg-light mt-3">
 	<div class="card-header bg-light">
 	 <div class ="row">
 		 <div class ="col-8 text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;불면증이란?<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;불면증은 전체 인구의 <span style ="color: red; ">30% 정도가</span> 경험하는<br>  </div>
 	</div>
 	</div>
 </div>
 <div class="card-body">
 	<h5 class="card-title">
 &nbsp;매우 흔한 질환이며 3개월 이상 증상이 만성적으로 지속되고 이로 인해 낮 동안 <br><br>
 &nbsp;피로감, 집중력장애, 감정적인 변화 등 활동에 지장을 경험하는 경우는 전 인구 <span style ="color: red; "> 10%</span> 정도입니다.<br><br>
	 <a class="insomnia" href="https://www.sleepmed.or.kr/content/info/insomnia.html">&nbsp;자세히 알아보기</a><br>
 	</h5>
 	</div>
 <div class ="card bg-light mt-3">
 	<div class="card-header bg-light">
 		<div class="row">
 		 <div class ="col-8 text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;자세한 내용<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;우리는 일시적인 스트테스나 기분의 변화로 인해 잠이 오지 않는 일을 경험하지만,<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;불면증상이 반복되면 주의를 기울여 증상이 악회되지 않도록 해야 합니다.<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;보통 이러한 불면증상을 일주일에 3차례 이상 경험하거나 <br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;불면으로 이핸 낮 동안의 생활에 방해가 심해진다면,<br><br> 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가까운 병원이나 의원에 내원하여 본인의 증상을 이야기 하길 바랍니다.<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;우측 상단의 자가진단를 click하셔서 진단해 보세요<br><br></div>
	</div>   
	</div>
	</div>
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
