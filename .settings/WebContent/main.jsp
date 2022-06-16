<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<style>
	.clear{
		clear: both;
	}

	header{
		width: 995px;
		height: 100px;
		margin-top: 10px;
		border: solid 1px green;
	}
	
	nav{
		width: 995px;
		height: 70px;
		margin-top: 10px;
		border: solid 1px green;
	}

	section{
		width: 600px;
		height: 300px;
		float: left;
		margin-top: 10px;
		border: solid 1px green;
	}

	aside{
		width: 400px;
		height: 400px;
		float: right;
		margin-top: 10px;
		margin-left: 20px;
		border: solid 1px green;
	}

</style>
<body>
	<header>
		불면증은 냅두면 불어요
	</header>

	<nav>
		나는 불면증인가<br>
		<a href='submit.jsp'>자가진단해보기</a><br>
		<a href='cure.jsp'>간단 치료법 알아보기</a>
	</nav>

	<section>
		불면증이란?<br>
		불면증은 전체 인구의 30% 정도가 경험하는 매우 흔한 질환이며 3개월 이상<br>
		증상이 만성적으로 지속되고 이로 인해 낮 동안 피로감, 집중력장애<br>
	
		감정적인 변화 등 활동에 지장을 경험하는 경우는 전 인구 10% 정도입니다. .<br>
	
		<img src='dog.jpg' width='150'height='150'>
		<img src='fish.jpg'width='150'height='150'>
		<img src='lizard.jpg'width='150'height='150'>
	</section>

	<aside>
		우리는 일시적인 스트테스나 기분의 변화로<br>
		인해 잠이 오지 않는 일을 경험하지만,<br>
		불면증상이 반복되면 주의를 기울여<br>
		증상이 악회되지 않도록 해야 합니다.<br>
		보통 이러한 불면증상을 일주일에 3차례 이상<br>
		경험하거나 불면으로 이핸 낮 동안의 생활에<br><br>
		방해가 심해진다면, 가까운 병원이나<br>
		의원에 내원하여 본인의 증상을 이야기<br>
		하길 바랍니다.<br><br>
		우측 상단의 자가진단를 click하셔<br>
		서 진단해 보세요<br>
	</aside>
</body>
</html>
