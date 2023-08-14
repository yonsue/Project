<%@page import="com.gt.s.kos.business.vo.GtBusinessVO"%>
<%@page import="com.gt.s.common.CodeUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% String gename = (String) request.getAttribute("ge_name"); %>
<% String dept = (String) request.getAttribute("dept"); %>
<% String title = (String) request.getAttribute("title"); %>
<% String gehp = (String) request.getAttribute("gehp"); %>
<% String titleNum = CodeUtil.title_gubun(title); %>

<!DOCTYPE html>

<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
	
	<script type="text/javascript">
			
			$(document).ready(function() {
				
				// 작성자
				var gename = "<%=gename%>";
				var dept = "<%=dept%>";
				var title = "<%=title%>";
				var titlenum = "<%=titleNum%>";
				titlenum = "3";
				var writer = dept + " " + gename + " " + title;
				
				// 연락처
				var hp = "<%=gehp%>";
				
				hp = "010-9891-0000";
					
				$("#gehp1").text(hp);
	
				alert(gename);
				$("#writer1").text(writer);
				$("#writer").val(writer);
				
				document.getElementById("date").innerText = new Date().toISOString().slice(0, 10);
				
				// 상신
				$(document).on("click", "#sbtn", function() {
					
					// 연락처
					$("#gehp").val(hp);
					
					// 결재선
					var hu1 = $("#hu1").text()
					var hu2 = $("#hu2").text()
					var hu3 = $("#hu3").text()
					var hu4 = $("#hu4").text()
					var hu5 = $("#hu5").text()
					
					$("#hu1_1").val(hu1);
					$("#hu2_1").val(hu2);
					$("#hu3_1").val(hu3);
					$("#hu4_1").val(hu4);
					$("#hu5_1").val(hu5);
					
					alert(hu1);
					alert($("#hu1_1").val());
					
					var dep1 = $("#dep1").text()
					var dep2 = $("#dep2").text()
					var dep3 = $("#dep3").text()
					var dep4 = $("#dep4").text()
					var dep5 = $("#dep5").text()
					
					$("#dept1_1").val(dep1);
					$("#dept2_1").val(dep2);
					$("#dept3_1").val(dep3);
					$("#dept4_1").val(dep4);
					$("#dept5_1").val(dep5);

					alert(dep1);
					alert($("#dept1_1").val());
					
					var cc = $("#reference").text();
					
					var aa = cc.replaceAll(", ", "/");
					
					console.log(">>> " +  aa);
					
					// input 히든에 벨류 값 보냄
					$("#reference").val(aa);
	
					let gvnum = document.getElementById("gvnum").value;
					alert(gvnum);
					
					// 메모 보내기
					var ql = $('.ql-editor').html();   
					var qui = $("#quill_html").val(ql);
		               
					alert("memo : > " + qui.val());
					
					$("#quill_html").val(qui.val());
					let dataParam = $("#form01").serialize(); // text들이 정상적으로 DB에 전송 될 시
	
					// 파일 업로드
					$.ajax({
						url : "gtVacationInsert.gos",
						data : dataParam,
						success : function(res) {
							alert(res);
							if (res == "OK") {
	
								$("#gvfile_form").attr({
									// file만 단독으로 업로드 시킨다.
									"action" : "gtVacationInsertFile.gos",
									"method" : "POST",
									"enctype" : "multipart/form-data" // 파일 업로드 시에는 enctype이 꼭 있어야함
								}).submit();
							} else {
								alert("입력 실패");
						}
					},
						error : function(e) {
							console.log(e.responseText)
						}
					});				
				});
				
				
				// 채번
				$.ajax({
					url : "gtVacationChanbun.gos",
					type : "GET",
					success : function(res) {
	
					var gvnum = res;
	
						alert(typeof (gvnum));
						$("#gvnum1").text(gvnum);
						
						$("#gvnum").val(gvnum);
					},
					error : function(e) {
						alert("gtVacationChanbun");
						console.log(e.responseText)
					}
				})
	
				//대결자
				var titlenum = "4";
	
				if (parseInt(titlenum) >= 4) {
					$.ajax({
	
						url : "goatsEmployeeSelect.gos",
						data : {
							dept : "개발2팀"
							
						},
						success : function(res) {
							console.log(res);
							selectDept(res);
						},
						error : function(e) {
							console.log(e.responseText);
						}
					});
				}
				
				function selectDept(dept) {
	
					var a = dept.split('/');
					console.log(a);
					var select = "";
					for (var i = 0; i < a.length - 1; i++) {
	
						var b = a[i].replaceAll(",", "/")
						var selectOption = "<option value=" + b + ">" + b + "</option>";
						select += selectOption;
					}
						console.log(select);
	
					$("#decianother").append(select);
	
				};
	
				// 기간 계산 
				$("#gvenddate").change(function() {
					
					let sd = document.querySelector("#gvstartdate").value;
					let ed = document.querySelector("#gvenddate").value;
					
					sd = new Date(sd);
					ed = new Date(ed);
	
					if (ed <= sd) {
						alert("날짜를 확인해주십쇼");
						$("#gvenddate").val("");
						
						return false;
					}
	
					alert(sd);
					alert(ed);
	
					dd = ed - sd;
					
					let datem = 24 * 60 * 60 * 1000;
	
					let date = dd / datem + "일";
					
					// document.getElementById("time").innerText =  date;
					$("#gvdays1").text(date);
					$("#gvdays").val(date);

				});
	
				$(document).on("click", "#gbtn", function() {
					$("#approvalline").css({
						"visibility" : "visible"
					});
				});
	
			});
	</script>
	
	<style type="text/css">
	.button-container {
		text-align: right;
	}
	
	.initial-size {
		min-height: 200px;
	}
	
	/* 		th {
				background-color: #f2f2f2;
			}
			
			table {
				border-collapse: collapse;
				width: 1033px;
			}
			
			th {
				border: 1px solid black;
				padding: 8px;
				text-align: center;
			}
			
			td {
				border: 1px solid black;
				padding: 8px;
			}
			
			div {
				width: 1033px;
			} */
	#approvalline {
		visibility: hidden;
		position: absolute;
		background-color: #fff;
		width: 100%;
		height: 100%;
		margin: auto;
	}
	</style>
	</head>
	<body>
		<div id="approvalline">
			<jsp:include page="../approvalline/select.jsp"></jsp:include>
		</div>
		<form name="form01" id="form01">
			<div class="button-container">
				<button type="button" id="gbtn">결재선지정</button>
				<button type="button" id="sbtn">상신</button>
				<button type="button" id="cbtn">취소</button>
	
			</div>
			<div>
				<h2 align="center">휴가 신청서</h2>
			</div>
			<br>
			<table id="gv_form">
				<tr align="center">
					<th width="120px">문서번호</th>
					<td width="230px" id="gvnum1"></td>
					<th width="120px">보안구분</th>
					<td width="230px">비공개</td>
					<th width="120px">보존연한</th>
					<td width="230px">5년</td>
				</tr>
				<tr align="center">
					<th width="100px">작성자</th>
					<td width="230px%" id="writer1">
					<th width="100px">작성일자</th>
					<td width="230px" id="date"></td>
					<th width="120px">대결자</th>
					<td width="230px"><select name="decianother" id="decianother">
					<option value="-"> - </option></select></td>
					<!-- 작성일자 -->
				</tr>
			</table>
			<br>
			<table id="table1">
				<tr>
					<th width="19px">순서</th>
					<th width="83px">구분</th>
					<th width="14px">결재자</th>
					<th width="14px">부서</th>
					<th width="14px">상태</th>
					<th width="14px">결재일</th>
					<th width="14px">결재의견</th>
				</tr>
				<tr align="center">
					<td>1</td>
					<td id="snag1"></td>
					<td id="hu1"></td>
					<td id="dep1"></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr align="center">
					<td>2</td>
					<td id="snag2"></td>
					<td id="hu2"></td>
					<td id="dep2"></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr align="center">
					<td>3</td>
					<td id="snag3"></td>
					<td id="hu3"></td>
					<td id="dep3"></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr align="center">
					<td>4</td>
					<td id="snag4"></td>
					<td id="hu4"></td>
					<td id="dep4"></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr align="center">
					<td>5</td>
					<td id="snag5"></td>
					<td id="hu5"></td>
					<td id="dep5"></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<br>
			<table id="cham1">
				<tr>
					<th width="120px">참 조</th>
					<td id="reference"></td>
				</tr>
			</table>
			<br>
			<table>
				<tr align="left">
					<th width="120px">제 목</th>
					<td><input type="text" name="gvsubject" size="100px"
						style="width: 820px"></td>
				</tr>
			</table>
			<br>
			<table>
				<tr align="left">
					<th width="120px">일 시</th>
					<td width="346px" colspan="3"><input type="date"
						name="gvstartdate" id="gvstartdate" max="2060-12-31"
						min="1950-01-01"> ~ <input type="date" name="gvenddate"
						id="gvenddate" max="2060-12-31" min="1950-01-01"></td>
	
				</tr>
				<tr>
					<th width="120px">기 간</th>
					<td width="700px" id="gvdays1"></td>
					<th width="100px">구 분</th>
					<td align="center"><select name="gvtype">
							<option value="-"> - </option>
							<option value="연차">연차</option>
							<option value="반차">반차</option>
							<option value="월차">월차</option>
					</select></td>
				</tr>
			</table>
			<table>
				<br>
				<tr>
					<th width="120px">사 유</th>
					<td colspan="3"><input type="text" name="gvreasons" size="100%"
						style="width: 820px"></td>
	
				</tr>
				<tr>
					<th width="120px">연 락 처</th>
					<td id="gehp1"></td>
				</tr>
				<br>
			</table>
			<table>
				<th width="120px">비고</th>
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
	
				var toolbarOptions = [ [ 'bold', 'italic', 'underline', 'strike' ],
						[ 'link', 'image' ], [ {
							'list' : 'ordered'
						}, {
							'list' : 'bullet'
						} ], [ {
							'header' : [ 1, 2 ]
						} ] ];
	
				var quill = new Quill('#editor', {
					modules : {
						toolbar : toolbarOptions
					},
					theme : 'snow'
				});
	
				function myFunction() {
					alert("gd");
				}
			</script>
	
			<div>
				<!-- 다른 곳에 있는 데이터를 담는 통을 해준다.-->
			 	<input type="hidden" id="quill_html" name="gvmemo" value="">
				<input type="hidden" id="reference" name="reference" value="">
				<input type="hidden" id="hu1_1" name="approver1" value="">
				<input type="hidden" id="hu2_1" name="approver2" value="">
				<input type="hidden" id="hu3_1" name="approver3" value="">
				<input type="hidden" id="hu4_1" name="approver4" value="">
				<input type="hidden" id="hu5_1" name="approver5" value="">
				<input type="hidden" id="dept1_1" name="dep1" value="">
				<input type="hidden" id="dept2_1" name="dep2" value="">
				<input type="hidden" id="dept3_1" name="dep3" value="">
				<input type="hidden" id="dept4_1" name="dep4" value="">
				<input type="hidden" id="dept5_1" name="dep5" value="">
				<input type="hidden" name="writer" id="writer" value=""> 
				<input type="hidden" id="dept" name="dept" value="">
				<input type="hidden" name="gvnum" id="gvnum" value=""> 
				<input type="hidden" name="gehp" id="gehp" value="">
				<input type="hidden" name="gvdays" id="gvdays" value="">
			</div>
		</form>
		<br>
		<form id="gvfile_form">
			<table>
				<tr>
					<th width="120px">첨부파일</th>
					<td><input type="file" name="gvfile" id="gvfile" size="100%"></td>
				</tr>
			</table>
		</form>
		<br>
	</body>
</html>