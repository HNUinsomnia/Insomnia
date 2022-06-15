<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		String arr[] = { "1. 잠들기 어렵다.", "2. 잠든 채로 있기 어렵다.",
				"3. 너무 일찍 일어난다.", "4. 당신의 수면 양상에 얼마나 만족하시나요?",
				"5. 당신의 수면 문제가 일상 기능을 어느 정도로 저해한다고 간주하나요? (예: 낮 시간의 피로, 업무/일상의 잡일을 할 때 기능을 발휘하는 능력, 집중력, 기분 등)", 
				"6. 삶의 질을 저하시킨다는 점에서 당신의 수면 문제는 다른 사람들이 보기에 얼마나 뚜렷하다고 생각하십니까?", 
				"7. 당신의 현재 수면 문제에 대해 얼마나 걱정/고통 스럽습니까?"};
		String ans[] = { "매우 만족", "만족", "보통", "불만족", "매우 불만족" };
		String ans2[] = { "전혀 저해되지 않음", "약간 저해", "어느 정도 저해", "많이 저해", "매우 많이 저해" };
		String ans3[] = { "전혀 뚜렷하지 않음",  "거의 뚜렷하지 않음", "어느 정도 뚜렷함", "많이 뚜렷함", "매우 많이 뚜렷함" };
		int i = 1;
		int j = 1;
		String groupname = "";
		String selname = "";
	%>
	
	<form method="post" action="SubmitReport.jsp">
		<table>
			<%
				for (String data : arr) {
					groupname = "mind" + i;
			%>
				<tr>
					<td colspan=5>설문: <%=data%>
					</td>
				</tr>
				<tr>
					<%
						for (String str : ans) {
								selname = "sel" + j;
					%>
					<td><input type="radio" name=<%=groupname%> value=<%=selname%>><label><%=str%></label></td>
					<%
						j += 1;
							}
					%>
				</tr>
			<%
					j = 1;
					i += 1;
				}
			%>
		</table>
				<input type = "submit" value="submit" />
				<p><br>
	</form>
		<input type=button value="메인으로" OnClick="location='login.jsp'">
	<form>
		
	</form>
</body>
</html>

<!-- 
설문표 출처
http://samsunghospital.com/dept/medical/diseaseSub03View.do?content_id=1761&DP_CODE=CIC&searchKey=%3F%3F%3F&hsts=%EA%B0%3F&hste=%3F%3F%3F&ds_code=D0001482
 -->