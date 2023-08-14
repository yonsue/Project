<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
	</head>
		<style type="text/css">
		/* 기본 레이아웃 */
		.wrapper1 {
			background-color: #fff;
			margin-top: 18px;
			margin-left: 50px;
			width: 300px;
		}
		
		.content1 {
			margin: 1px;
			margin-bottom: 10px;
		}
        .div{
            border-bottom:  solid #e2e2e2;
        }
		/* 4번째 .content에서 마지막까지 적용 */
		.wrapper1>.content1:nth-of-type(n+4) {
			display: flex;
		}
		/* 홀수번째 .section 적용         */
		.section1:nth-of-type(odd) {
			width: 60%;
		}
		/* 짝수번째 .section 적용 */
		.section1:nth-of-type(even) {
			width: 40%;
		}
		/* 4번째 .content의 2번째 .section만 적용 */
		.content1:nth-of-type(4)>.section:nth-of-type(2) {
			text-align: right;
		}
		/* .wrapepr의 3번째이하 .content 적용 */
		.wrapper1>.content1:nth-of-type(-n+3) {
		
		}
		/* .wrapper의 1번째 .content 적용 */
		.wrapper1>.content1:nth-of-type(1) {
			height: 50px;
		}
	</style>
	<body>
		<div class="wrapper1">
			<div class="content1" align="center">이미지(img)</div>
			<div class="content1" align="center">이름</div>
			<div class="content1 div" align="center">직책</div>
	
			<div class="content1 div">
                
				<div class="section1" >
                    <div>직급</div>
                    <div></div>
					
				</div>
			</div>
			<div class="content1 div">
                <div class="section1" >
                <div>이메일</div>
                <div></div>
                

            </div>
			</div>
			<div class="content1 div">
                <div class="section1" >
                <div>입사일</div>
                <div></div>
			</div>
        </div>
		</div>
	</body>
</html>