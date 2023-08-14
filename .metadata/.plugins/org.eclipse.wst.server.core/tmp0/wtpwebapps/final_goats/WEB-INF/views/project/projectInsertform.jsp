<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.log4j.LogManager" %>  
<%@ page import="org.apache.log4j.Logger" %>  
<%@ page import="com.gt.s.common.FileUploadUtil" %>

<%
	Logger log = LogManager.getLogger(this.getClass());
	log.info("mainpage.jsp");
%>  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
      rel="stylesheet"
    />
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-1.11.0.min.js"
    ></script>
    <script>
      $(document).ready(function () {
        alert("여기는 레디");
		
       
        
        
        $(document).on("click", ".delete-btn", function () {
          $(this).closest("tr").remove();
        }); // 행추가하는 문구에 class='delete-btn' 버튼 추가해뒀음
        // 이거 클릭시 위 함수 작동해서 tr 삭제함

        $(document).on("click", "#conbtn", function () {
          $("#contable").append(
            "<tr><td>SEQ<br /><input type='text' /></td>" +
              "<td>담당팀<br /><input type='text' id='gptic' name='gptic'/></td>" +
              "<td>담당자<br /><input type='text' id='gptic' name='gptic'/></td>" +
              "<td><input type='button' value='-' class='delete-btn'></td></tr>"
          ); // 버튼 누르면 행 추가 //
        });

        $(document).on("click", "#condbtn", function () {
          $("#condtable").append(
            "<tr>" +
              "</tr>" +
              "<tr>" +
              "<td>" +
              "계약유형<br />" +
              "<select id='gpcontype' name='gpcontype'>" +
              "<option>인건비</option>" +
              "<option>용역료</option>" +
              "<option>제품</option>" +
              "<option>상품</option>" +
              "<option>하드웨어</option>" +
              "<option>비용</option>" +
              "</select>" +
              "</td>" +
              '<td>예상금액<br /><input type="text" id="gpest" name="gpest" /></td>' +
              '<td>계약금액<br /><input type="text" id="gptestmount" name="gptestmount"/></td>' +
              '<td>비고<br /><input type="text" id="gpnote" name="gpnote" /></td>' +
              "<td><input type='button' value='-' class='delete-btn'></td></tr>"
          );
        }); // 버튼 누르면 행추가// #(아이디) 확인할 것

        $(document).on("click", "#insert", function () {
        	 var a = $('.ql-editor').html();
             
             var b =$("#gpinfo").val(a);
          $("#formall").attr({
            'action' : 'projectInsert.gos',
            'method' : 'GET',
            'enctype' : 'multipart/form-data'
          }).submit();
        }); // insert 펑션
      }); // end of ready
    </script>
    <style>
      /* 전체 스타일 */
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding: 20px;
      }

      /* 컨테이너 스타일 */
      .container2 {
        display: flex;
      }

      .container2 > div:first-child {
        margin-right: 20px;
      }

      /* 첫 번째 컨테이너 스타일 */
      .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      }

      /* 제목 스타일 */
      h1 {
        font-size: 24px;
        margin-bottom: 20px;
        color: #333;
      }

      /* 테이블 스타일 */
      table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
      }

      table td {
        padding: 10px;
        border: 1px solid #ccc;
      }

      /* 입력 필드 스타일 */
      input[type="text"],
      input[type="date"],
      select {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
      }

      /* 텍스트 에디터 스타일 */
      #editor {
        height: 200px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        background-color: #fff;
      }

      /* 추가 버튼 스타일 */
      #conbtn,
      #condbtn,
      #conddbtn {
        padding: 8px 16px;
        background-color: #4caf50;
        border: none;
        color: #fff;
        cursor: pointer;
        border-radius: 5px;
        font-size: 14px;
        margin-top: 10px;
      }

      /* 추가 버튼 마우스 호버 효과 */
      #conbtn:hover,
      #condbtn:hover,
      #conddbtn:hover {
        background-color: #45a049;
      }

      /* 테이블 간격 스타일 */
      #contable,
      #condtable {
        margin-bottom: 20px;
      }
    </style>
  </head>
  <body>
    <form id="formall" name="formall">
      <div class="container2" style="margin: 0">
        <div>
          <jsp:include page="mainSide-bar.jsp" />
        </div>
        <div style="margin: 0; padding: 0">
          <jsp:include page="Top-bar.jsp"></jsp:include>
          <div class="container" id="rightcon">
            <div class="out-div" style="width: 100%">
              <h1>프로젝트 등록</h1>
              <table style="width: 100%">
                <tr>
                  <td colspan="7">기본</td>
                </tr>
                <tr>
                  <td>프로젝트 아이디<br /><input type="text" /></td>
                  <td colspan="3">
                    프로젝트명<br /><input
                      type="text"
                      id="gpname"
                      name="gpname"
                    />
                  </td>
                </tr>
                <tr>
                  <td>
                    구분*<br /><input type="text" id="gpgubun" name="gpgubun" />
                  </td>
                  <td>
                    프로젝트 시작일<br /><input
                      type="date"
                      id="gpstartdate"
                      name="gpstartdate"
                    />
                  </td>
                  <td>
                    프로젝트 종료일<br /><input
                      type="date"
                      id="gpenddate"
                      name="gpenddate"
                    />
                  </td>
                </tr>
                <tr>
                  <td colspan="4">
                    상위 프로젝트<br /><input type="search" />
                  </td>
                </tr>
              </table>
              <table>
                <tr>
                  <td colspan="10">계약</td>
                </tr>
                <tr>
                  <td>
                    계약처<input type="search" id="gpcontr" name="gpcontr" />
                  </td>
                  <td>
                    계약여부<br /><select id="gpcontryn" name="gpcontryn">
                      <option>예</option>
                      <option>아니요</option>
                    </select>
                  </td>
                  <td>
                    계약 시작일<br /><input
                      type="date"
                      id="gpcstartdate"
                      name="gpcstartdate"
                    />
                  </td>
                  <td>
                    계약 종료일<br /><input
                      type="date"
                      id="gpcenddate"
                      name="gpcenddate"
                    />
                  </td>
                </tr>
              </table>
              <h1>내용</h1>
              <div id="editor" class="initial-size"></div>
              <input type="hidden" id="gpinfo" name="gpinfo" />
              <script>
                var quill = new Quill("#editor", {
                  // Quill 설정 옵션
                });

                // 작성 영역 클릭 시 이벤트 처리
                var editorContainer = document.querySelector("#editor");
                editorContainer.addEventListener("click", function () {
                  quill.focus(); // 작성 영역으로 포커스 이동
                });

                var toolbarOptions = [
                  ["bold", "italic", "underline", "strike"],
                  ["link", "image"],
                  [{ list: "ordered" }, { list: "bullet" }],
                  [{ header: [1, 2] }],
                ];

                var quill = new Quill("#editor", {
                  modules: {
                    toolbar: toolbarOptions,
                  },
                  theme: "snow",
                });
                function myFunction() {}
              </script>
            </div>
            <table id="contable">
              <tr>
                <td colspan="10">계약처</td>
              </tr>
              <tr>
                <td colspan="10">
                  [계약처 이름 위에서 가져오기: 계약처 코드랑]
                </td>
              </tr>
              <tr>
                <td>SEQ<br /><input type="text" /></td>
                <td>
                  담당팀<br /><input type="text" id="gptic" name="gptic" />
                </td>
                <td>
                  담당자<br /><input
                    type="text"
                    id="gpticman"
                    name="gpticman"
                  />
                </td>
                <td>
                  <button type="button" value="추가" id="conbtn">추가</button
                  ><br />
                </td>
              </tr>
            </table>
            <br />
            <table id="condtable">
              <tr>
                <td colspan="10">계약사항</td>
              </tr>
              <tr>
                <td>
                  계약유형<br />
                  <select id="gpcontype" name="gpcontype">
                    <option>인건비</option>
                    <option>용역료</option>
                    <option>제품</option>
                    <option>상품</option>
                    <option>하드웨어</option>
                    <option>비용</option>
                  </select>
                </td>
                <td>
                  예상금액<br /><input type="text" id="gpest" name="gpest" />
                </td>
                <td>
                  계약금액<br /><input
                    type="text"
                    id="gpestmount"
                    name="gpestmount"
                  />
                </td>
                <td>
                  비고<br /><input type="text" id="gpnote" name="gpnote" />
                </td>
                <td>
                  <button type="button" value="추가" id="condbtn">추가</button
                  ><br />
                </td>
              </tr>
            </table>
            <table>
              <tr>
                <td colspan="10">인원계획</td>
              </tr>
              <tr>
                <td>계약유형</td>
                <td>사번</td>
                <td>사원명</td>
                <td>자원등급</td>
                <td>투입시작일</td>
                <td>투입종료일</td>
                <td>투입공수(M/M)</td>
                <td>
                  <button type="button" value="추가" id="conddbtn">추가</button
                  ><br />
                </td>
              </tr>
              <tr>
                <td colspan="8"></td>
              </tr>
            </table>
            <br />
            <div>
              <h3>파일관리</h3>
              <hr />
              <input type="file" multiple="multiple" id="filename" />
              <table>
                <tr>
                  <td>#</td>
                  <td>구분</td>
                  <td>파일</td>
                  <td>작성자</td>
                  <td>작성일</td>
                </tr>
                <tr>
                  <td>-</td>
                  <td>-</td>
                  <td>-</td>
                  <td>-</td>
                  <td>-</td>
                </tr>
              </table>
              <input type="button" value="등록완료" id="insert" />
            </div>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
