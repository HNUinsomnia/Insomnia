<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.io.PrintWriter" %>

<%
String point1 = request.getParameter("point1");
String point2 = request.getParameter("point2");
String point3 = request.getParameter("point3");
String point4 = request.getParameter("point4");
String point5 = request.getParameter("point5");
String point6 = request.getParameter("point6");
String point7 = request.getParameter("point7");

int pt1 = Integer.parseInt(point1);
int pt2 = Integer.parseInt(point2);
int pt3 = Integer.parseInt(point3);
int pt4 = Integer.parseInt(point4);
int pt5 = Integer.parseInt(point5);
int pt6 = Integer.parseInt(point6);
int pt7 = Integer.parseInt(point7);

int sumPoint = pt1 + pt2 + pt3 + pt4 + pt5 + pt6 + pt7;
%>   

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width= device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<style>
	span {
		text-color: red;
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
	
	<div>
		<ul style="list-style-type: circle">
			<li><b>채점/해석을 위한 지침</b></li>
			<li>모든 7가지 항목들(1a+1b+1c+2+3+4+5)를 더합니다.</li>
			<li style="margin-top: 10px">총점의 범위는 0~28점</li>
			<ul>
			<li style="list-style-type: '😴'; padding-left:5px">0 ~ 7 = 임상적으로 유의한 불면증이 없음</li>
			<li style="list-style-type: '🥱'; padding-left:5px">8 ~ 14 = 기준치 이하 불면증</li>
			<li style="list-style-type: '😥'; padding-left:5px">15 ~ 21 = 임상적 불면증(중등도 심각도)</li>
			<li style="list-style-type: '😪'; padding-left:5px">22 ~ 28 = 임상적 불면증(심함)</li>
			</ul>
		</ul>
	</div>
	
	<div style="margin-left: 30px">
		<%
		out.println("당신의 점수는 " + sumPoint + "점 이므로");
		%>
		<br/>당신의 현재상태는 다음과 같습니다. <br/>
		<%
		if(sumPoint>=0 && sumPoint<8) {
			  out.println("임상적으로 유의한 불면증이 없는 상태입니다. 건강한 수면습관을 지니셨네요!");
			}
			else if(sumPoint>7 && sumPoint<15) {
			  out.println("기준치 이하 불면증 상태입니다. 수면습관을 바꿔보시는건 어떨까요?");
			}
			else if(sumPoint>14 && sumPoint<22) {
			  out.println("임상적 불면증(중등도 심각도) 상태입니다. 습관만이 문제가 아닐 수도 있어요. 식습관이나 기타등등도 체크해주세요");
			}
			else {
			  out.println("임상적 불면증(심함) 상태입니다. 병원에 가보셔서 진지하게 치료를 받는게 좋으실거에요");
			}
		%>
	</div>
	
	<!-- 
		if(sumPoint>=0 && sumPoint<8) {
		  out.println("임상적으로 유의한 불면증이 없는 상태입니다. 건강한 수면습관을 지니셨네요!");
		}
		else if(sumPoint>7 && sumPoint<15) {
		  out.println("기준치 이하 불면증 상태입니다. 수면습관을 바꿔보시는건 어떨까요?");
		}
		else if(sumPoint>14 && sumPoint<22) {
		  out.println("임상적 불면증(중등도 심각도) 상태입니다. 습관만이 문제가 아닐 수도 있어요. 식습관이나 기타등등도 체크해주세요");
		}
		else {
		  out.println("임상적 불면증(심함) 상태입니다. 병원에 가보셔서 진지하게 치료를 받는게 좋으실거에요");
		}
		 -->

	<script type="text/javascript">
		alert(<%=sumPoint%>)
	</script>

	


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