<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입 하기</title>
<!-- css 링크 -->
<link href="join.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	
	function input_check(){
		if(document.join_form.name.value.length == 0){
			alert("이름을 입력해주세요.");
			join_form.name.focus();
			return false;
		}
		
		if(document.join_form.rrn1.value.length != 6){
			alert("주민번호는 6글자 입니다.");
			join_form.rrn1.focus();
			return false;
		}
		
		if(document.join_form.rrn2.value.length != 7){
			alert("주민번호는 7글자 입니다.");
			join_form.rrn2.focus();
			return false;
		}
		
		if(document.join_form.userid.value.length == 0){
			alert("아이디를 입력해주세요.");
			join_form.userid.focus();
			return false;
		}
		
		if(document.join_form.userid.value.length < 4){
			alert("아이디는 4글자 이상입력해야 합니다.");
			join_form.userid.focus();
			return false;
		}
		
		if(document.join_form.userpwd.value.length == 0){
			alert("비밀번호를 입력해주세요.");
			join_form.userpwd.focus();
			return false;
		}
		// 비밀번호 체크
		if(document.join_form.userpwd.value.length != document.join_form.userpwd_chk.value.length){
			alert("비밀번호가 일치하지 않습니다.");
			join_form.userpwd_chk.focus();
			return false;
		}
		
		return true;
	}
	
</script>

</head>
<body>
	
	<form name="join" id="join_form" method="post" action="Joinervlet">
		
		<label for="rule" style="color:red">* 부분 필수 입력</label>
		<br>
		<label for="name">이름 </label><span style="color:red"> * </span>
		<input type="text" name="name" id="name"> <br>
		
		<label for="rrn">주민등록번호 </label><span style="color:red"> * </span>
		<input type="text" name="rrn1" id="rrm"> - 
		<input type="text" name="rrn2" id="rrm"> <br>
		
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
		
		<label for="phon_num">우편번호 </label> &nbsp;
		<input type="text" name="phon_num" id="phon_num"> <br>
		
		<label for="job">직업</label> &nbsp;
		<select id="job" name="job" size="1">
			<option value="">선택하세요.</option>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select> <br>
		
		<label for="chk_mail"> 메일 정보 수신 여부 </label> &nbsp;
			<input type="checkbox" id="chk_mail" name="chk_mail" value="yes" checked>수신
			<input type="checkbox" id="chk_mail" name="chk_mail" value="no"> 거부 <br>
		
		<label for="interest"> 관심분야 </label> &nbsp;
			<input type="checkbox" id="interest" name="interest" value="생두"> 생두
			<input type="checkbox" id="interest" name="interest" value="원두"> 원두
			<input type="checkbox" id="interest" name="interest" value="로스팅"> 로스팅 
			<input type="checkbox" id="interest" name="interest" value="핸드드립"> 핸드드립
			<input type="checkbox" id="interest" name="interest" value="에스프레소"> 에스프레소
			<input type="checkbox" id="interest" name="interest" value="창업"> 창업 
		
		<div id="button">
			<button id="btn">회원가입</button>
			<button id="btn" onclick="history.back();"> 뒤로가기</button>
		</div>
	</form>
	
</body>
</html>