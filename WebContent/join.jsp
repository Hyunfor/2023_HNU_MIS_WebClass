<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입 하기</title>
<!-- css 링크 -->
<link href="join.css" rel="stylesheet" type="text/css">
<!-- javascript 링크 -->
<script src="join.js" type="text/javascript"></script>
</head>

<body>
	
	<form name="join" id="join" method="post" action="JoinServlet" >
		
		<label for="rule" style="color:red">* 필수 입력란</label>
		<br>
		<label for="name">이름 </label><span style="color:red"> * </span>
		<input type="text" name="name" id="name" value="전우치" style="border"> <br>
		
		<label for="rrn">주민등록번호 </label><span style="color:red"> * </span>
		<input type="text" name="rrn" id="rrn" value="150917"> - 
		<input type="text" name="rrn2" id="rrn2" value="1652098"> <br>
		
		<label for="userid">아이디 </label><span style="color:red"> * </span>
		<input type="text" name="userid" id="userid"><br>
		
		<label for="userpwd">비밀번호 </label><span style="color:red"> * </span>
		<input type="password" name="userpwd" id="userpwd"><br>
		
		<label for="userpwd_chk">비밀번호 확인 </label><span style="color:red"> * </span>
		<input type="password" name="userpwd_chk" id="userpwd_chk"><br>
		
		<label for="email">이메일 </label> &nbsp;
		<input type="text" name="email" id="email"> @
		<input type="text" name="email_dns" id="email">
			<select name="email_input">
				<option value="">직접입력</option>
				<option value="gmail.com">gmail.com</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
			</select> <br>
			
		<label for="zip_code">우편번호 </label> &nbsp;
		<input type="text" name="zip_code" id="zip_code"> <br>
		
		<label for="addr">주소 </label> &nbsp;
		<input type="text" name="addr" id="addr"> 
		<input type="text" name="addr2" id="addr2"> <br>
		
		<label for="phone_num">핸드폰 번호 </label> &nbsp;
		<input type="text" name="phone_num" id="phone_num"> <br>
		
		<label for="job">직업</label> &nbsp;
		<select id="job" name="job" size="1">
			<option value="">선택하세요.</option>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="도사">도사</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select> <br>
		
		<label for="chk_mail"> 메일 정보 수신 여부 </label> &nbsp;
			<input type="checkbox" id="chk_mail" name="chk_mail" value="yes">수신
			<input type="checkbox" id="chk_mail" name="chk_mail" value="no"> 거부 <br>
		
		<label for="interest"> 관심분야 </label> &nbsp;
			<input type="checkbox" id="interest" name="interest" value="생두"> 생두 
			<input type="checkbox" id="interest" name="interest" value="원두"> 원두 
			<input type="checkbox" id="interest" name="interest" value="로스팅" checked> 로스팅 
			<input type="checkbox" id="interest" name="interest" value="핸드드립"> 핸드드립 
			<input type="checkbox" id="interest" name="interest" value="에스프레소" checked> 에스프레소 
			<input type="checkbox" id="interest" name="interest" value="창업" checked> 창업
		
		<div id="button">
			<input type="submit" value="회원가입" onclick="return input_check()">
			<input type="reset" value="가입취소">
		</div>
		
	</form>
	
</body>
</html>