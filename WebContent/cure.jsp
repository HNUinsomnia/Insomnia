<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ page import="java.io.PrintWriter" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width= device-width, initial-scale=1, shrink-to-fit=no">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/custom.css">
			<title>불면증은 냅두면 불어요</title>

			<link rel="stylesheet" type="text/css" href="css/cure.css">

			<style>
				h5 { 
					padding-left: none;
				}
			</style>

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
			<div class="container">
				<details class="default square">
					<summary><b>불면증 극복 음식 추천 5</b> <span class="open">&nbsp;open</span><span class="close">&nbsp;close</span></summary>
					<ul>
						<li><h5>1. 캐모마일 차</h5></li>
						<li>캐모마일 차는 불안, 화, 긴장 등을 진정시키는 향을 가지고 있어 온 몸의 긴장을 풀어주고, 마음을 편안하게 해 주어 불면증에 효과적이다.</li>
						<li>잠자리에 들기 전에 따뜻한 물에 캐모마일 잎을 우려내어 한 잔 마시면 숙면에 도움이 된다.</li>
						<li style="padding-bottom: 10px;">다른 방법으로는, 배게 속에 캐모마일 향의 오일이나 말린 캐모마일 잎을 넣어두면 곧 은은한 향의 졸음이 몰려올 것이다.</li>
						
						<li><h5>2. 키위</h5></li>
						<li>칼슘, 마그네슘, 이노시톨 등의 영양소가 풍부하게 함유되어 있어서 탁월한 신경 안정 효과를 가진 과일의 탈을 쓴 수면제이자 불면증 개선에 효과적이다.</li>
						<li>실제로, 대만의대 영양건강과학대학원의 유진방 교수는 ‘잠자리에 들기 한 시간 전에 키위 2개를 섭취하면 수면의 질이 현저히 향상된다’는 연구 결과를 발표하기도 했다.</li>
						<li style="padding-bottom: 10px;">이는 정신 건강 유지에 크게 기여하여 편안한 수면을 돕는다.</li>
						
						<li><h5>3. 상추</h5></li>
						<li>2006년 경기도농업기술원은 상추를 섭취하면 편한 숙면을 할 수 있다는 과학적 연구결과를 발표했다.</li>
						<li>상추의 쓴맛은 생리활성 작용으로 진통효과와 진정작용을 통해 졸음을 유도한다.</li>
						<li style="padding-bottom: 10px;">특히, 상추에 함유되어있는 락튜카이움이라는 성분은 졸음을 유발하는 성분으로 최면효과를 가진다.</li>

						<li><h5>4. 삶은 계란</h5></li>
						<li>인체는 해가 지면 '밤의 호르몬'이라고도 불리는 멜라토닌이라는 호르몬을 분비하는데, 이 호르몬은 생체 리듬을 조절해 수면을 유도한다.</li>
						<li>멜라토닌의 생성을 돕는 대표적 음식 중 하나는 우리가 집에서 흔히 먹는 계란이다.</li>
						<li style="padding-bottom: 10px;">섬유근육통 및 만성적 피로 연구 센터 (Fibromyalgia and Fatigue Centers)의 제이콥 테이텔바움(Dr. Jacob Teitelbaum) 의학박사는 숙면을 취할 수 있게 해 주는 야식으로 삶은 계란을 권유하였다.</li>

						<li><h5>5. 따뜻한 우유</h5></li>
						<li>우유에는 편안함과 만족감을 주어 숙면에 도움이 되는 세로토닌과 멜라토닌 생성에 필요한 트립토판이 풍부히 함유되어 있다.</li>
						<li>트립토판은 진정 효과를 가지고 있어 지친 몸을 달래주기도 한다. </li>
						<li>실제로 전문의들도 불면증 환자에게 잠자리에 들기 한 시간 전에 우유를 마시는 것을 권장하는 경우가 종종 있다고 한다.</li>
						<li style="padding-bottom: 10px;">하지만, 우유를 너무 차게 마실 경우는 오히려 숙면에 방해가 될 수 있으니 주의해야 한다.</li>
					</ul>
				</details>

				<details class="primary square">
					<summary><b>숙면을 위한 6가지 생활 습관</b><span class="open">&nbsp;open</span><span class="close">&nbsp;close</span></summary>	
					<ul>
						<li><h5>1. 침대를 잠자는 공간으로 만들기</h5></li>
						<li>인지행동치료는 잠을 빨리 들게 할 뿐만 아니라 수면의 질을 향상시킬 수도 있다. </li>
						<li>이 방법은 침실 혹은 침대를 잠자는 용으로만 사용하는 것이다. </li>
						<li>침대에서 책이나 텔레비전을 보거나 음식을 먹거나 특히 일하는 것은 침대에 들어갔을 때 뇌를 각성상태로 만들어 수면에 방해가 됩니다. </li>
						<li style="padding-bottom: 10px;">몸이 침대를 잠만 자는 공간이라고 인식하면 잠들기가 훨씬 쉬워질 것입니다.</li>
						
						<li><h5>2. 수면사이클 만들기</h5></li>
						<li>전날 잤던 시간과 상관없이 일정한 수면패턴을 가지는 것이 좋다. </li>
						<li>전날 늦게 잠들었다고 다음날 늦게 일어나게 되면 또 다시 일찍 잠들기가 힘들어질 것이다. </li>
						<li style="padding-bottom: 10px;">늦게 자고 일찍 일어나게 되면 그 날 하루는 조금 힘들겠지만 다시 일정한 수면패턴을 찾는데 도움이 될 것이다</li>
						
						<li><h5>3. 자기 전에 전자기기 사용하지 않기</h5></li>
						<li>우리 뇌에 있는 송과체라는 부분은 낮에 햇볕을 보면 밤에 수면을 도와주는 호르몬인 멜라토닌을 생성해낸다. </li>
						<li style="padding-bottom: 10px;">그런데 밤에 전자기기를 사용하게 되면 화면에서 방출되는 빛으로 인해 멜라토닌의 분비가 억제되고 몸이 긴장되어 잠들기 어렵게 됩니다.</li>
						
						<li><h5>4. 자기 전 카페인과 술 섭취 줄이기</h5></li>
						<li>인체는 해가 지면 '밤의 호르몬'이라고도 불리는 멜라토닌이라는 호르몬을 분비하는데, 이 호르몬은 생체 리듬을 조절해 수면을 유도한다.</li>
						<li>술을 마시면 잠이 잘 와 잠들지 못할 때 한잔 씩 마시는 사람도 있을 것이다. </li>
						<li style="padding-bottom: 10px;">술은 입면 즉, 잠에 드는 것은 도와주지만 수면의 질을 떨어뜨리고 중간에 깨게 만들어 결과적으로는 숙면에 방해가 된다.</li>

						<li><h5>5. 꾸준히 운동하기</h5></li>
						<li>운동을 하면 신경전달물질인 세로토닌이 생성되어 수면의 질을 향상시켜준다. </li>
						<li style="padding-bottom: 10px;">하지만 늦은 시간에 강도 높은 운동을 하게 되면 몸이 다시 각성상태가 되기 때문에 조심해야한다.</li>

						<li><h5>6. 숙면에 도움이 되는 4-7-8 호흡법</h5></li>
						<li>이 호흡법은 하버드대 교수인 앤드류 와일(Andrew Weill)이 개발한 방법이다.</li>
						<li>이 방법은 ‘프라나야마(Pranayama)라고 하는 고대 요가의 호흡법을 활용한 방법으로, 이를 사용하면 마음을 진정시키고 폐에 공기를 충분히 공급시켜주어 부교감신경이 자극돼 잠에 쉽게 들 수 있다고 한다. </li>
						<li style="padding-bottom: 5px;">방법은 굉장히 간단하다</li>
						<li style="padding-left: 10px;">첫째, 코로 4초간 천천히 숨을 들이쉰다.</li>
						<li style="padding-left: 10px;">둘째, 7초간 숨을 멈춘다.</li>
						<li style="padding-left: 10px; padding-bottom: 5px;">셋째, 8초간 천천히 숨을 내쉰다.</li>
						<li style="padding-bottom: 10px;">이 방법을 사용한다고 즉시 잠에 빠져들 수 있는 것은 아니지만 이 호흡법을 활용하며 몸의 긴장을 풀면 전보다 훨씬 쉽게 잠에 들 수 있을 것이다.</li>
					</ul>
				</details>

				<details class="success">
					<summary><b>수면위생이란?</b><span class="open">&nbsp;open</span><span class="close">&nbsp;close</span></summary>	
					<ul>
						<li>수면에 영향을 주는 개인적이고 환경적인 변인들에 대한 일련의 규칙 및 기본적인 정보를 수면위생이라고 한다.</li>
						<li style="padding-bottom: 5px;">숙면은 평소에 수면위생을 잘 지킴으로써 유지해 나갈 수 있다.</li>
						<li style="padding-left: 10px;">1. 낮잠을 피한다. 정말로 졸리는 경우는 아침기상 8시간 후에 10-15분 정도로 낮잠을 제한한다.</li>
						<li style="padding-left: 10px;">2. 잠자리에 누워있는 시간을 일정하게 한다.(예를 들어 8시간으로 정하면, 그 이상 잠자리에 누워있지 않는다)</li>
						<li style="padding-left: 10px; padding-bottom: 5px;">3. 매일 규칙적으로 운동한다. 약 40분 정도가 좋으며, 잠자리에 들기 6시간 전에 운동을 마치는 것이 가장 좋다.</li>
						<li>발가락, 발목, 허벅지 등의 근육을 손으로 풀어주는 것도 도움이 된다.</li>
						<li style="padding-top: 10px; padding-bottom: 10px;"><a class="insomnia" href="http://www.samsunghospital.com/dept/main/index.do?DP_CODE=SPD&MENU_ID=004">자세히 알아보기</a></li>
					</ul>
				</details>

				<details class="ver2">
					<summary><b>수면장애에 있어서 주의할 사항?</b> <span class="open">&nbsp;open</span><span class="close">&nbsp;close</span></summary>	
					<ul>
						<li>1. 시계를 잠자리에서 보이지 않는 곳에 두고, 밤에 일어나더라도 시계를 보지 않는다.</li>
						<li>2. 침실은 어둡고, 조용하고, 공기소통이 잘되고 편안한 실내온도가 유지되도록 한다.</li>
						<li>3. 밤에 깨는 경우를 대비하여 간단한 자기 최면을 배워 둔다. 너무 잠들려고 노력하지 않는다.</li>
						<li>4. 가급적 집외에 다른 곳에서 잠자지 않도록 한다.</li>
						<li>5. 침대나 잠자리가 너무 딱딱하거나 푹신하지 않도록 한다.</li>
						<li style="padding-bottom: 10px;">6. 의사에 처방에 따라 가끔 작용시간이 짧은 수면촉진제는 먹어도 좋다.</li>
					</ul>
				</details>
			</div>

			<footer class="navbar navbar-default" style="margin-top : 20px">
				<h5>여기에 상담 등록하시면 연락 드립니다.</h5>
				<section class="contanter">
					<select name="lectureDivide" class="form-control mx-1 mt 2">
						<option value="전체">전체</option>
						<option value="불면증">불면증</option>
						<option value="자가진단">자가진단</option>
						<option value="기타">기타</option>
					</select>
					<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요."
						style="margin-top : 5px">
					<button type="submit" class="btn btn-primary mx-1 mt-2" style="margin-top : 5px; margin-bottom : 5px">
						검색</button>
					<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal"
						style="margin-top : 5px; margin-bottom : 5px">상담등록</a>
					<a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal"
						style="margin-top : 5px; margin-bottom : 5px">신고</a>
				</section>
				<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal"
					aria-hidden="true">
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
												<option value="2022" selected>2022</option>
											</select>
										</div>
									</div>
									<div class="form-group col-sm-4">
										<label> 자주 깨는 시간</label>
										<select name="timeDivide" class="form-control">
											<option value="11시" selected> 11시</option>
											<option value="12시"> 12시</option>
											<option value="1시"> 1시</option>
											<option value="2시"> 2시</option>
											<option value="3시"> 3시</option>
											<option value="4시"> 4시</option>
											<option value="5시"> 5시</option>
											<option value="6시"> 6시</option>
										</select>
									</div>
									<div class="form-group col-sm-4">
										<label> 수면제 복용 </label>
										<select name="State" class="form-control">
											<option value="수면제 복용중" selected> 수면제 복용중</option>
											<option value="지금은 복용 안함"> 지금은 복용 안함</option>
											<option value="수면제 복용 안함"> 수면제 복용 안함</option>
										</select>
									</div>
									<div class="form-group">
										<label>제목</label>
										<input type="text" name="evaluationTitle" class="form-control" maxlength="40">
									</div>
									<div class="form-group">
										<label>내용</label>
										<textarea name="evaluationContent" class="form-control" maxlength="2048"
											style="height: 180px;"></textarea>
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
										<textarea name="reportContent" class="form-control" maxlength="2048"
											style="height: 180px;"></textarea>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-danger">신고하기</button>
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