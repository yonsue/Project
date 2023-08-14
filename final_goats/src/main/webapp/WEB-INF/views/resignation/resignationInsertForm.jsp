

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="com.gt.s.common.chabun.service.GtChabunServiceImpl"%>
<%@page import="com.gt.s.common.DateFormatUtil"%>
<%@page import="com.gt.s.common.ChabunUtil"%>
<%@page import="com.gt.s.common.chabun.dao.GtChabunDAOImpl"%>
<%@page import="com.gt.s.common.chabun.dao.GtChabunDAO"%>
<%@page import="com.gt.s.common.chabun.service.GtChabunService"%>
<%@page import="com.gt.s.kos.resignation.vo.GtResignationVO"%>


<%
	// session에서 작성자 정보 가져오기
	String genum = (String)request.getAttribute("genum");  
	String dept = (String)request.getAttribute("dept");  
	String title = (String)request.getAttribute("title");  
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/insert.js"></script>
	<script src="resources/js/common.js"></script>
	
	<script type="text/javascript">
	
		// ready() 시작
		$(document).ready(function() {
			$.ajax({
				url : "gtResignationChanbun.gos",
				success: function(res) {
					
					console.log(">>> res : " + res);
					
					$('#grnum1').text(res);
					$('#grnum').val(res);
				},
				error: function(e) {
					console.log(e.reponseText);
				}
			}); // 채번 ajax			
			
			// btnSend 클릭시
			$(document).on('click', '#btnSend', function() {
				
				alert(">>> btnSend.click() In");
				
				let dataParam = $("#form01").serialize();
				
				// 우선 텍스트 먼저 전송
				$.ajax({
					url: 'resignationInsert.gos',
					type: 'GET',
					data: dataParam,
					success: function(res) {
						alert(">>> Success !!!" + res);
						
						if(res == 'YES') {
							
							$('#form02').attr({
								'action':'gtResignationInsertFile.gos',
								'method':'POST',
								'encType':'multipart/form-data'
							}).submit();
							
						
						}else {
							alert(">>> grfile Insert Fail");
						}
					},
					error: function(e) {
						alert(e.responseText);
					},
				});
				
			}); // end of btnSend.click()
			
			// 작성일자 자동입력
			document.getElementById('currentDate').innerText = new Date().toISOString().slice(0,10);
			// 작성자 자동입력
			var dept = document.getElementById('gedept').value;
			var name = document.getElementById('gename').value;
			var title = document.getElementById('title').value;
			document.getElementById('writer').innerText = dept + " " + name + " " + title;
			
			$("#btnCancle").click(function(){
				window.close();
			});
		}); // end of ready()	

	</script>

	
	<style type="text/css">
	.button-container {
		text-align: right;
	}
	
	.initial-size {
		min-height: 200px;
	}
	
	th {
		background-color: #f2f2f2;
	}
	
	table {
		border-collapse: collapse;
		width: 1000px;
	}
	
	th {
		border: 1px solid black;
		padding: 8px;
		text-align: center;
	}
	
	td {
		algin: center;
		border: 1px solid black;
		padding: 8px;
	}
	
	div {		
		width: 1000px;
	}
	

	.sp {
		font-size: 20pt;
	}
	</style>
</head>
	<body>
	 <form id="form01" name="form01">
		<div class="button-container">
			<button>결재선지정</button>
			<button type="button" id="btnSend">상신</button>
			<button type="button" id="btnCancle" onclick="javascript:btnCancle()">취소</button>
		</div>
		<div align="center">
			<span class="sp"><strong>사 직 서</strong></span>
		</div>
		<br>
		<table id="table1" class="table1">
			<tr>
				<th width="120px">문서번호</th>
				<td width="230px" id="grnum1"></td>
				<th width="120px">보안구분</th>
				<td width="230px">비공개</td>
				<th width="120px">보존연한</th>
				<td width="230px">5년</td>
			</tr>
			<tr>
				<th width="100px">작성자</th>
				<td width="230px" id="writer">부서 / 사원(내용)</td>
				<th width="100px">작성일자</th>
				<td colspan="3" id="currentDate"></td>
			</tr>
		</table>
		<br>
		<table class="table01">
			<tr>
				<th width="20px">순서</th>
				<th width="80px">구분</th>
				<th width="17px">결재자</th>
				<th width="17px">부서</th>
				<th width="8px">상태</th>
				<th width="10px">결재일</th>
				<th width="35px">결재의견</th>
			</tr>
			<tr align="center">
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr align="center">
				<td>2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr align="center">
				<td>3</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr align="center">
				<td>4</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr align="center">
				<td>5</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<br>
		<table id="cham1" class="cham1">
			<tr>
				<th width="120px">참 조</th>
				<td><input type="text" name="reference" id="reference" style="width:820px"></td>
			</tr>
		</table>
		<br>
		<table class="tab t04">
			<tr>
				<th width="120px">제 목</th>
				<td><input type="text" name="grsubject" id="grsubject" style="width: 820px"></td>
			</tr>
		</table>
		<br>
		<table class="tab t05">
			
			<tr>
				<th width="120px">직 급</th>
				<td><input type="text" name="dept" id="dept" style="width: 820px" ></td>
			</tr>
			<tr>
				<th width="120px">성 명</th>
				<td><input type="text" style="width: 820px"></td>
			</tr>
			<tr>
				<th width="120px">입 사 일</th>
				<td><input type="date"  name="grstartdate"></td>
			</tr>
			<tr>
				<th width="120px" >최종근무일</th>
				<td><input type="date" name="grenddate"></td>
			</tr>
		</table>
		
	
		<table class="tab t06">
			<th>비고</th>
			<br>
		</table>
		
		<div id="editor" class="initial-size"></div>		
		<script>
			var quill = new Quill('#editor', {
			// Quill 설정 옵션
			});
	
			// 작성 영역 클릭 시 이벤트 처리
			var editorContainer = document.querySelector('#editor');
				editorContainer.addEventListener('click', function() {
					quill.focus(); // 작성 영역으로 포커스 이동
			});
	
			var toolbarOptions = [  [ 'bold', 'italic', 'underline', 'strike' ],
									[ 'link', 'image' ], 
									[ {'list' : 'ordered'}, {'list' : 'bullet'} ],
									[ {'header' : [ 1, 2 ]} ] 
								 ];
	
			var quill = new Quill('#editor', {
				modules : {toolbar : toolbarOptions},theme : 'snow'
				});
	
			function myFunction() {
				alert("gd");
			}
		</script>
		
		<br>		
		
		<!-- 	가공값 세팅	 -->
		<input type="hidden" name="grmemo" id="grmemo" >
		<input type="hidden" name="writer" id="writer">
		<input type="hidden" name="grnum" id="grnum">
		
		<!-- 		session에서 받아올 값		 -->		
		<input type="hidden" name="genum" id="genum" value="genum">		
		<input type="hidden" name="gename" id="gename" value="gename">
		<input type="hidden" name="title" id="title" value="title">
		<input type="hidden" name="gedept" id="gedept" value="gedept">

<!-- 		실제로 데이터 받을 때 사용		 -->
<%-- 		<input type="hidden" name="genum" id="genum" value="${param.genum}">		 --%>
<%-- 		<input type="hidden" name="gename" id="gename" value="${param.gename}"> --%>
<%-- 		<input type="hidden" name="title" id="title" value="${param.gename}"> --%>
<%-- 		<input type="hidden" name="gedept" id="gedept" value="${param.gedept}"> --%>
		
		<!-- 결재선 지정 받을 곳 -->
		<input type="hidden" name="gdr_approver" id="gdr_approver" value="">
		<input type="hidden" name="gdr_pproval" id="gdr_pproval" value="">
		<input type="hidden" name="gdr_count" id="gdr_count" value="">
		
		
	</form>
	<form id="form02" name="form02">
		<table  class="tab t07">
			<tr>
				<th width="120px">첨부파일</th>
				<td><input type="file" name="grfile" id="grfile" size="100%"></td>
			</tr>
		</table>
		<br>
	</form>
	
	</body>
</html>