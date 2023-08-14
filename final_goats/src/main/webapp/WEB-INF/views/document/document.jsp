<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script></script>
    <style>
    
   	    html, body {
		  height: 100%;
		  margin: 0;
		  padding: 0;
		}
      body {
		  display: flex;
		  flex-direction: column;
		}
      body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
      }
      .con {
		  flex: 1;
		}

      .container2 {
        display: flex;
        height: 100px;
        width: 100%;
      }

      
      .container {
	    display: flex; /* Flexbox를 적용하여 요소들을 가로로 배치합니다 */
	    flex-direction: row; /* 요소들을 가로 방향으로 배치합니다 */
	    justify-content: space-between; /* 각 요소를 좌우로 최대한 벌립니다 */
	    height: 430.43; 
	  }

      .container > div {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        
      }

      .container h3 {
        margin: 0;
        padding: 10px 0;
        font-size: 18px;
        font-weight: bold;
      }

      .calendar {
        height: 200px;
      }

      .alert table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 10px;
      }

      .alert th,
      .alert td {
        padding: 10px;
        text-align: left;
      }

      .alert th {
        background-color: #f0f0f0;
      }

      .work {
        height: 300px;
      }
      
      #maindiv{
      	width:100%;
      	height:100%;
      }
      
      table, td, tr {
         border:1px solid black;
      }
      table {
         margin:50px auto;
      }
          .custom-button {
      background-color: #337ab7;
      color: white;
      border: none;
      padding: 5px 20px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 13px;
      margin: 4px 2px;
      cursor: pointer;
    }
    
      #my-table {
    border-collapse: collapse;
  }

  #my-table td {
    border-top: none;
    border-bottom: none;
  }
      
    </style>
  </head>
  <body>
    <div class="container2" style="margin: 0; height:100%;">
		<div style="height:100%; max-height:970px;">
			<jsp:include page="../main/mainSide-bar.jsp" />
		</div>
     	 <div style="margin: 0; padding: 0; width:100%;">
       		<jsp:include page="../main/Top-bar.jsp"></jsp:include>
        <br>
			　<img src="resources/goats_icon/home.png" alt="home" width="20" height="20"> Home > 전자결재 > <span style="color: #337ab7;"><b>문서함</b></span>

        <div class="alert" style="background-color: whitesmoke; height: auto">
        </div>
		<table style="width:1300px; height:20px;" id="my-table;">
			<tr>
				<td><input type="text"><input type="text"><input type="text"><input type="text"></td>
			</tr>
			<tr>
				<td><input type="date"><input type="date"><input type="button" value="검색" class="custom-button"></td>
			</tr>
		</table>
     
      </div>
    </div>
  </body>
</html>
