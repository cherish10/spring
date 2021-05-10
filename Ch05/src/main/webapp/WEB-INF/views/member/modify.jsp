<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify</title>
</head>
<body>
	<h3>Member 수정</h3>
	<a href="/Ch05">처음으로</a>
	<form action="/Ch05/member/modify" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" readonly value="${memberVo.uid}"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${memberVo.name}"/></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp" value="${memberVo.hp}"/></td>
			</tr> 
			<tr>
				<td>직급</td>
				<td>
					<select name=pos value="${memberVo.pos}"/>
						<option>부장</option>
						<option>과장</option>
						<option>차장</option>
						<option>대리</option>
						<option>사원</option>
					</select>
				</td>
			</tr> 
			<tr>
				<td>부서</td>
				<td>
					<select name="dep" value="${memberVo.dep}"/>
						<option value="101">영업1부</option>
						<option value="102">영업2부</option>
						<option value="103">영업3부</option>
						<option value="104">영업지원부</option>
						<option value="105">인사부</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="수정"/></td>
			</tr>
		</table>
	</form>
</body>
</html>