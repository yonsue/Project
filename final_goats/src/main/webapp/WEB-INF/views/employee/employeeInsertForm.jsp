<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 		<script  src="http://code.jquery.com/jquery-latest.min.js"></script> 

		<script type="text/javascript">
		
			$(document).ready(function(){
				
				 $.ajax({
	        		  url : "getGtEmployeeChabun.gos",
	        		  success:function(res){
	        			  
	        			  var genum = res;
	        			  
	        			  $("#genum").val(genum);
	        			  
	        		  },
	        		  error:function(e){
	        			  console.log(e.responseText)
	        		  }
	        		  
	        	  });
								
				$("#geidbtn").click(function(){
					let idurl = "gtEmployeeIdcheck.gos";
					let idtype = "GET";
					let iddataParam = { geid: $("#geid").val(),};
					
					$.ajax({
						url : idurl,
						type : idtype,
						data: iddataParam,
						success: whenSuccess,
						error: whenError
						
					});
					
					function whenSuccess(resData){
						alert(resData);
						if("ID_YES" == resData){
							alert("아이디 사용 가능 : ID_YES.");
							
							$("#geid").attr("readonly", true);
							$("#gepw").focus();
							
						}else{
							alert("이미 아이디 사용중 : ID_NO");
							$("#geid").val('');
							$("#geid").focus();
						}
						
					}
					
					function whenError(e){
						alert("e >>> : " + e.responseText)
					}
					
				});
				
				$('#geemail2').change(function(){
					$('#geemail2 option:selected').each(function(){
						if($(this).val() == '1'){
							var aa = $("#geemail1").val();
							$("#geemail1").val('');
							$("#geemail1").attr("readonly", false);
						}else{
							$("#geemail1").val($(this).text());
							$("#geemail1").attr("readonly", true);
						}
					});	
				});
				
				$("#gepwbtn").click(function(){

					if($("#gepw").val() != "" && $("#gepw_r").val() != ""){
					if($("#gepw").val() == $("#gepw_r").val()){
						alert("비밀번호가 같습니다.");
						$("#gepw_r").val("");
					}else{
						alert("비밀번호가 틀립니다.");
						$("#gepw_r").val("");
						$("#gepw").val("");
						$("#gepw").focus();
					}
					}else{
						alert("비밀번호를 입력해주세요");
					}
				});
				
				$("#zonecode").click(function(){
				    new daum.Postcode({
				        oncomplete: function(data) {
					$("#gezone").val(data.zonecode);
					$("#geroad").val(data.roadAddress);
					$("#gejibun").val(data.jibunAddress);
				        }
				    }).open();
				
				});
				
				
				$("#btn").click(function(){
					
					var gehp = $("#gehp0").val() + "-" + $("#gehp1").val() + "-" + $("#gehp2").val(); 
					var geemail = $("#geemail0").val() + "@" + $("#geemail1").val();
					
					$("#gehp").val(gehp);
					$("#geemail").val(geemail);
					
					let dataParam = $("#empForm").serialize();

					$.ajax({
        				url : "gtEmployeeInsert.gos",
        				data : dataParam,
        				success : function(res){
        					alert(res);
							if(res == "OK"){
								alert("aaaa")
								
        	        		  	$("#gefile_form").attr({
        	        			  "action" : "gtEmployeeFileInsert.gos",
        	        			  "method" : "POST",
        	        			  "enctype": "multipart/form-data"
        	        		  	}).submit();
        	        		  
							}else{
								alert("입력 실패");
							}
        				},
        				error : function(e){
        					console.log(e.responseText);
        				}
        			});
					
					
				});
			});
		</script>
	</head>
	<body>
		<h3>회원가입</h3>
		<hr>
		<div>
			<form name = "empForm" id="empForm">
				<table border="1">
					<tr>
						<td>회원번호</td>
						<td><input type="text" name="genum" id="genum" readonly></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="gename" id="gename"></td>
					</tr>
					<tr>
						<td>부서명</td>
						<td><select name="gedept" id="gedept">
							<option value="개발1팀">개발1팀</option>
							<option value="개발2팀">개발2팀</option>
							<option value="개발3팀">개발3팀</option>
							<option value="영업팀">영업팀</option>
							<option value="인사팀">안사팀</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>직급</td>
						<td>
							<select name="title" id="title">
							<option value="사원">사원</option>
							<option value="대리">대리</option>
							<option value="과장">과장</option>
							<option value="차장">차장</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="geid" id="geid" placeholder="아이디체크" style="width:100px">
							<input type="button" name="geidbtn" id="geidbtn" value="아이디중복확인">
						</td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td>
							<input type="text" name="gepw" id="gepw"  style="width:100px"><br>
							<input type="text" name="gepw_r" id="gepw_r" placeholder="비밀번호확인" style="width:100px">
							<input type="button" name="gepwbtn" id="gepwbtn" value="비밀번호확인">
						</td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gegender" id="gegender_f" value="2" checked> 여자
							<input type="radio" name="gegender" id="gegender_m" value="1" > 남자
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td>
							<input type="date" name="gebirth" id="gebirth">
						</td>
					</tr>
					<tr>
						<td>연봉</td>
						<td><input type="text" name="salary" id="salary"></td>
					</tr>
					<tr>
						<td>핸드폰</td>
						<td><select name="gehp0" id="gehp0">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="019">019</option>
						</select>
						- <input type="text" name="gehp1" id="gehp1" size="2" maxlength="4">
						- <input type="text" name="gehp2" id="gehp2" size="2" maxlength="4">
						</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>
						<input type="text" name="geemail0" id="geemail0" style="width:100px">
						@<input type="text" name="geemail1" id="geemail1" style="width:100px" placeholder="직접입력">
						<select name="geemail2" id="geemail2" style="width:100px; mmargin-right:10px">
							<option value= "1" selected>직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.net">daum.net</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<input type="text" name="gezone" id="gezone" placeholder="우편번호" style="width:50px">
							<input type="button" name="zonecode" id="zonecode" value="우편번호 찾기"><br>
							<input type="text" name="geroad" id="geroad" placeholder="도로명주소" style="width:250px"><br>
							<input type="text" name="geroaddetail" id="geroaddetail" placeholder="도로명주소 상세주소" style="width:250px"><br>
							<input type="text" name="gejibun" id="gejibun" placeholder="지번주소" style="width:250px">
						</td>	
					</tr>
					<tr>
						<td>
						<div>
							<input type="hidden" name="gehp" id="gehp" value="">
							<input type="hidden" name="geemail" id="geemail" value="">
						</div>
						</td>
					</tr>
				</table>
			</form>
			<form id="gefile_form" name="gefile_form" >
			<table border="1">
				<tr>
					<td>사진</td>
						<td>
							<input type="file" name="gephoto" id="gephoto"> 
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" id="btn"> 보내기</button>
							<button type="reset"> 다시</button>
						<td>
					</tr>
			</table>
			</form>
		</div>
	</body>
</html>