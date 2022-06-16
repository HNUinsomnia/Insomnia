<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<!-- 아직 미완성임 점수 관련 수정필요함-->
	<%! int point = 0;
		int total = 0;
		String level = "";
	%>
	<%
		for(int i=1; i<7; i++){
			String mind = request.getParameter("mind"+i);
			if(mind.equals("sel1")){point=5;}
			else if(mind.equals("sel2")){point=4;}
			else if(mind.equals("sel3")){point=3;}
			else if(mind.equals("sel4")){point=2;}
			else {point=1;}
			total += point;
		}

		if (total <13){
			level = "편하게 잘 주무시네요. 항상 행복하세요.";
		}

		else if (total <19){

			level = "잠을 잘 못주무시는 편이네요. 간단한 조치사항에 대해서라도 읽어보세요";

		}

		else {
			level = "심각한 불면증일 수 있습니다. 의사와 상담하세요.";
		}
	%>

	<script type="text/javascript">
		alert(<%=total%>)
	</script>

	당신의 현재상태는 다음과 같습니다. <br>

	<%=level %>
	<% total = 0; %>
</body>
</html>