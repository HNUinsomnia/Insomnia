<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		String arr[] = { "a. 잠들기 어렵다.", "b. 잠든 채로 있기 어렵다.",
				"c. 너무 일찍 일어난다.", "2. 당신의 수면 양상에 얼마나 만족하시나요?",
				"3. 당신의 수면 문제가 일상 기능을 어느 정도로 저해한다고 간주하나요? (예: 낮 시간의 피로, 업무/일상의 잡일을 할 때 기능을 발휘하는 능력, 집중력, 기분 등)", 
				"4. 삶의 질을 저하시킨다는 점에서 당신의 수면 문제는 다른 사람들이 보기에 얼마나 뚜렷하다고 생각하십니까?", 
				"5. 당신의 현재 수면 문제에 대해 얼마나 걱정/고통 스럽습니까?"};
		String ans[] = { "전혀 없음", "약간", "중간 정도", "심함", "전혀 없음" };
		String ans1[] = { "매우 만족", "만족", "보통", "불만족", "매우 불만족" };
		String ans2[] = { "전혀 저해되지 않음", "약간 저해", "어느 정도 저해", "많이 저해", "매우 많이 저해" };
		String ans3[] = { "전혀 뚜렷하지 않음",  "거의 뚜렷하지 않음", "어느 정도 뚜렷함", "많이 뚜렷함", "매우 많이 뚜렷함" };
		int i = 1;
		int j = 1;
		String groupname = "";
		String selname = "";
	%>
	
	<form method="post" action="SubmitReport.jsp">
		<table>
			<tr>
				<td colspan=5> 설문조사를 시작하겠습니다. </td>
			</tr>
			<tr/>
			<tr>
				<td colspan=5> 1. 당신의 불면증 문제(들)의 현재 심각성에 대해 표시해 주세요. </td>
			</tr>
			<tr>
				<td colspan=5> <%= arr[0] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction1" value="0"><label><%=ans[0]%></label></td>
				<td><input type="radio" name="satisfaction1" value="1"><label><%=ans[1]%></label></td>
				<td><input type="radio" name="satisfaction1" value="2"><label><%=ans[2]%></label></td>
				<td><input type="radio" name="satisfaction1" value="3"><label><%=ans[3]%></label></td>
				<td><input type="radio" name="satisfaction1" value="4"><label><%=ans[4]%></label></td>
			</tr>
			<tr>
				<td colspan=5> <%= arr[1] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction2" value="0"><label><%=ans[0]%></label></td>
				<td><input type="radio" name="satisfaction2" value="1"><label><%=ans[1]%></label></td>
				<td><input type="radio" name="satisfaction2" value="2"><label><%=ans[2]%></label></td>
				<td><input type="radio" name="satisfaction2" value="3"><label><%=ans[3]%></label></td>
				<td><input type="radio" name="satisfaction2" value="4"><label><%=ans[4]%></label></td>
			</tr>
			<tr>
				<td colspan=5> <%= arr[2] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction3" value="0"><label><%=ans[0]%></label></td>
				<td><input type="radio" name="satisfaction3" value="1"><label><%=ans[1]%></label></td>
				<td><input type="radio" name="satisfaction3" value="2"><label><%=ans[2]%></label></td>
				<td><input type="radio" name="satisfaction3" value="3"><label><%=ans[3]%></label></td>
				<td><input type="radio" name="satisfaction3" value="4"><label><%=ans[4]%></label></td>
			</tr>
			
			<tr>
				<td colspan=5> <%= arr[3] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction4" value="0"><label><%=ans1[0]%></label></td>
				<td><input type="radio" name="satisfaction4" value="1"><label><%=ans1[1]%></label></td>
				<td><input type="radio" name="satisfaction4" value="2"><label><%=ans1[2]%></label></td>
				<td><input type="radio" name="satisfaction4" value="3"><label><%=ans1[3]%></label></td>
				<td><input type="radio" name="satisfaction4" value="4"><label><%=ans1[4]%></label></td>
			</tr>
			
			<tr>
				<td colspan=5> <%= arr[4] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction5" value="0"><label><%=ans2[0]%></label></td>
				<td><input type="radio" name="satisfaction5" value="1"><label><%=ans2[1]%></label></td>
				<td><input type="radio" name="satisfaction5" value="2"><label><%=ans2[2]%></label></td>
				<td><input type="radio" name="satisfaction5" value="3"><label><%=ans2[3]%></label></td>
				<td><input type="radio" name="satisfaction5" value="4"><label><%=ans2[4]%></label></td>
			</tr>
			
			<tr>
				<td colspan=5> <%= arr[5] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction6" value="0"><label><%=ans3[0]%></label></td>
				<td><input type="radio" name="satisfaction6" value="1"><label><%=ans3[1]%></label></td>
				<td><input type="radio" name="satisfaction6" value="2"><label><%=ans3[2]%></label></td>
				<td><input type="radio" name="satisfaction6" value="3"><label><%=ans3[3]%></label></td>
				<td><input type="radio" name="satisfaction6" value="4"><label><%=ans3[4]%></label></td>
			</tr>
			<tr>
				<td colspan=5> <%= arr[6] %> </td>
			</tr>
			<tr>
				<td><input type="radio" name="satisfaction7" value="0"><label><%=ans3[0]%></label></td>
				<td><input type="radio" name="satisfaction7" value="1"><label><%=ans3[1]%></label></td>
				<td><input type="radio" name="satisfaction7" value="2"><label><%=ans3[2]%></label></td>
				<td><input type="radio" name="satisfaction7" value="3"><label><%=ans3[3]%></label></td>
				<td><input type="radio" name="satisfaction7" value="4"><label><%=ans3[4]%></label></td>
			</tr>
			<tr/>
		</table>
			<input type="submit" value="submit" />
			<p><br>
	</form>
		
	<form>
		<input type=button value="메인으로" OnClick="location='login.jsp'">
	</form>
</body>
</html>

<!-- 
설문표 출처
http://samsunghospital.com/dept/medical/diseaseSub03View.do?content_id=1761&DP_CODE=CIC&searchKey=%3F%3F%3F&hsts=%EA%B0%3F&hste=%3F%3F%3F&ds_code=D0001482
 -->