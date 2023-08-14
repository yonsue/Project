<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>GOAT.S</title>
    <style type="text/css">
    html, body {
	  height: 100%;
	  margin: 0;
	  padding: 0;
	  max-height:970px;
	}
    
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f7f7f7;
        
      }
      body {
	  display: flex;
	  flex-direction: column;
	}
      #body {
	  flex: 1;
	}
      #body {
      height:100%;
      }

      .container {
        max-width: 800px;
        margin: 0;
        padding: 0px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        width:300px;
      }

      h2 {
        margin: 0;
        padding: 10px 10px;
        text-align: center;
        color: #337ab7;
      }

      h5 {
        margin: 0;
        padding: 5px 0;
        text-align: center;
        color: #555;
      }

      hr {
        margin: 20px 0;
        border: 0;
        border-top: 1px solid #ddd;
      }

      ul {
        list-style-type: none;
        padding: 0;
        height:100%;
      }

      li {
        padding: 10px 0;
        text-align: center;
        color: #333;
        cursor: pointer;
      }

      li:hover {
        background-color: #f5f5f5;
      }
      #div1{
       	background-color: #fff;
      	height:60px;
      	cursor: pointer;
      	width:300px;
      }
      #lidiv {
      	width:250px;
      	height:100%;
   	    max-height: 910px;
      }
      .con {
      	height:100%;
      }
    </style>
  </head>
  <body id="body">
  <div id="body"> 
    <div id="div1">
  	<h2 onclick="location.href='gt_main.gos';">GOAT.S</h2>
  	</div>
    <div class="container con">

      <hr />
      <div id="lidiv">
        <h5>여기는 이용자</h5>
        <hr>
        <ul>
          <li onclick="location.href='#';">Home</li>
          <li onclick="location.href='#';">출장/교육</li>
          <li onclick="location.href='#';">휴가</li>
          <li onclick="location.href='#';">프로젝트</li>
          <li onclick="location.href='#';">공지사항</li>
          <li onclick="location.href='#';">전자결재</li>
        </ul>
      </div>
    </div>
    </div>
  </body>
</html>
