<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript">
		

			$(document).on("click", "#btn", function() {
				$("#wrapper2").css({
					"visibility" : "hidden"
				});
					
				alert("asdasd");
				
				$("#wrapper3").css({
					"visibility" : "visible"
				});		
			});
			
			$(document).on("click", "#gbtn", function() {
				$("#wrapper2").css({
					"visibility" : "visible"
				});
					
				alert("asdasd");
				
				$("#wrapper3").css({
					"visibility" : "hidden"
				});		
			});
		
		</script>
	</head>
		<style src="text/css">
		
		/* 기본 레이아웃 */
		.wrapper2 {
			position : absolute ;
			z-index: 2;
			background-color: #fff;
			margin-top: 19px;
			margin-right: 10px;
			width: 600px;
		}
		
		.section2 {
	
			margin: 2px;
			display: flex;
			margin-bottom: 15px;
		}
		

		/* 홀수번째 .article 조정 */
		.article2:nth-of-type(odd) {

			padding-left: 5px;
			width: 25%;
		}
		/* 짝수번째 .article 조정 */
		.article2:nth-of-type(even) {

			width: 81%;
			padding-left: 10px;
		}
		
		bi {
			width: 81%;
			margin-right: 10px;
		}
		
	/*===============================================================  */	
		/* 기본 레이아웃 */
		.wrapper3 {
			position : absolute ;
			z-index: 1;
			background-color: #fff;
			margin-top: 18px;
			margin-right: 10px;
			width: 600px;
		}
		
		.section3 {
	
			margin: 2px;
			display: flex;
			margin-bottom: 15px;
		}
		
		/* 홀수번째 .article 조정 */
		.article3:nth-of-type(odd) {
			padding-left: 5px;
			width: 25%;
		}
		/* 짝수번째 .article 조정 */
		.article3:nth-of-type(even) {
			width: 75%;
			padding-left: 10px;
		}
		
		#wrapper3 {
			visibility: hidden;
		}
		
		.wrap {
			position: relative;
		}
		</style>
	
	<body>
		<div class="wrap">
			<div class="wrapper2" id="wrapper2" >
				<div class="content2">
					<input type="button" value="내정보"><input type="button" value="비밀번호 변경" id="btn">
					<hr>
				</div>
				<div class="content2">
					<div class="section2">
						<div class="article2">email</div>	
                        <input style="width: 450px;">
					</div>
					<div class="section2">
						<div class="article2">주소</div>
                        <input style="width: 450px;">
					</div>
					<div class="section2">
						<div class="article2">전화번호</div>
                        <input style="width: 450px;">
					</div>
					<div class="section2">
						<div class="article2">비상연락망1</div>
						<div class="article2">
							<select width="90%;">
                                <option>--선택--</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
                                <input name = bi>
							</select>
                       
						</div>
					</div>
					<div class="section2">
						<div class="article2">비상연락망2</div>
						<div class="article2">
							<select>
                                <option>--선택--</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
                                <input name = bi>
							</select>
						</div>
					</div>
					<div class="section2">
						<div class="article2"></div>
						<div class="article2">
							<input type="button" value="저장">
						</div>
					</div>
				</div>
			</div>
		<!-- 		===============================================================   -->
			<div class="wrapper3" id="wrapper3">
				<div class="content3">
					<input type="button" value="내정보" id="gbtn"><input type="button" value="비밀번호 변경" >
					<hr>
				</div>
				<div class="content3"></div>
					<div class="section3">
						<div class="article3">기존 비밀번호</div>
	                    <input type="text" style="width: 450px;">
					</div>
					<div class="section3">
						<div class="article3">새 비밀번호</div>
	                    <input type="text" style="width: 450px;">
					</div>
	              
					<div class="section3">
						<div class="article3">새 비밀번호 확인</div>
	                    <input type="text" style="width: 450px;">
					</div>
	                <div  class="section3">
	                    <div>
	                    </div>
	                    <div class="article3">   
	                        <small class="small">비밀번호 8자리 이상 입력하십쇼 </small> 
	                    </div>
	                </div>
					<div class="section3">
						<div class="article3"></div>
						<div class="article3">
							<input type="button" value="저장">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>