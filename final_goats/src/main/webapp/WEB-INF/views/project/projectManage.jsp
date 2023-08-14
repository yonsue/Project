<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.gt.s.kos.schedule.vo.GtScheduleVO" %>
<%@ page import="org.apache.log4j.LogManager" %>  
<%@ page import="org.apache.log4j.Logger" %>  

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
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-1.11.0.min.js"
    ></script>
    <script>
      $(document).ready(function () {
        alert("여기는 레디");
      }); // end of ready
    </script>
    <style>
      body {
        margin: 0 auto;
      }
      
      #rightcon {
        width: 1000px;
      }

      table {
        width: 100%;
        border-collapse: collapse;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      }

      tr td {
        border: 1px solid gray;
      }


      td {
        width: 65px;
        height: 25px;
      }

      

      body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
      }

      .container2 {
        display: flex;
      }

      .container {
		margin: 0;
        flex-direction: row;
        justify-content: space-between;
        height: 951px;
        width: 100%;
      }
      
    </style>
  </head>
  <body>
    <div class="container2" style="margin: 0">
      <div>
        <jsp:include page="mainSide-bar.jsp" />
      </div>
      <div style="margin: 0; padding: 0">
        <jsp:include page="Top-bar.jsp"></jsp:include>
        <div class="container" id="rightcon">
           <div class="out-div" style="width:100%">
           <h1>프로젝트 관리</h1>
        	<table style="width:100%">
        	</table>
        	
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

