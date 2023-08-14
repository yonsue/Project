<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>


	</head>
		<style src="text/css">
		
		/* 기본 레이아웃 */
		.wrapper2 {
            background-color: darkmagenta;
			margin: 0 auto;
			width: 600px;
		}
		
        .content2 > input:nth-of-type(2) {
            margin-left: 20px;
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
			width: 75%;
			padding-left: 10px;
		}
        .article2:nth-of-type(4){
            margin-top: 0px;
            position: relative ;
            top: 10px;
        }
        .small {
            position:relative;
            top: -10px;
            left:145px;
        }

		</style>
	
	<body>
		<div class="wrapper2">
			<div class="content2">
				<input type="button" value="내정보"><input type="button" value="비밀번호 변경">
				<hr>
			</div>
			<div class="content2"></div>
				<div class="section2">
					<div class="article2">기존 비밀번호</div>
                    <input type="text" style="width: 450px;">
				</div>
				<div class="section2">
					<div class="article2">새 비밀번호</div>
                    <input type="text" style="width: 450px;">
				</div>
              
				<div class="section2">
					<div class="article2">새 비밀번호 확인</div>
                    <input type="text" style="width: 450px;">
				</div>
                <div  class="section2">
                    <div>
                    </div>
                    <div class="article2">   
                        <small class="small">비밀번호 8자리 이상 입력하십쇼 </small> 
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
	</body>
</html>