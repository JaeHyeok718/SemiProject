<%@page import="com.nilili.board.model.vo.Board"%>
<%@page import="com.nilili.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<%
   //로그인 정보 꺼내놓기 
   //session객체에 loginUser 객체와 alertMsg 메세지를 담아놓음 
   //Member loginUser = (Member)session.getAttribute("loginUser");
   //로그인 전 menubar.jsp 로딩되면 loginUser == null
   //로그인 후 menubar.jsp 로딩되면 로그인한 회원정보담긴 Member객체
   //로그인 전 menubar.jsp 로딩되면 alertMsg == null
   //로그인 후 menubar.jsp 로딩되면 alertMsg == 성공메세지 
   Member loginMember = (Member)session.getAttribute("loginMember");
   Board b = (Board)request.getAttribute("b");

%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <!-- jQuery library -->
     <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
      <!-- Popper JS -->
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <!-- Latest compiled JavaScript -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
      
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
  <!-- 기본 필요한 라이브러리 입니다 -->

    <link href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Gaegu:wght@300;400;700&family=IBM+Plex+Sans+KR&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <meta charset="UTF-8">
    
<title>Insert title here</title>
<style>
.wrap {
   background-color: white;
   color: black;
   width: 1920px;
   /* height: 1000px; */
   margin: auto;
   margin-top: 50px;
}

.wrap {
   width: 1920px;
}

.wrap>div {
   width: 100%;
}

#header {
   /* border: 1px solid black; */
   height: 165px;
}

#line {
   height: 35px;
   background-color: black;
}

#logo {
   /* border:1px solid black; */
   width: 155px;
   height: 70px;
   padding-top: 30px;
   margin-left: 882.5px
}

#footer {
   margin-top: 60px;
   color: gray;
}

#f_text {
   padding-top: 40px;
}

.list-area {
   border-top: 3px solid #313131;
   border-bottom: 3px solid #313131;
   /* text-align: center; */
   width: 1000px;
   margin-top: 150px;
}

#title1 {
   width: 150px;
   height: 100px;
   /* border:1px solid green; */
   float: left;
   /* font-family: 'Nanum Gothic', sans-serif; */
   font-family: 'Noto sans KR', sans-serif;
   font-size: 12px;
   color: #A12B2B;
   display: flex;
   justify-content: center;
   align-items: center;
   margin-left: 750px;
   margin-top: 30px;
   padding-top: 10px;
   font-weight: 700;
}

#title2 {
   width: 240px;
   height: 100px;
   /* border:1px solid red; */
   float: left;
   font-size: 34px;
   /* font-family: 'Nanum Gothic', sans-serif; */
   font-family: 'Noto sans KR', sans-serif;
   font-weight: 800;
   display: flex;
   justify-content: center;
   align-items: center;
   margin-top: 30px;
}

div {
   /* font-family: 'Nanum Gothic', sans-serif; */
   font-family: 'Noto sans KR', sans-serif;
   font-weight: 400;
}

td {
   height: 70px;
   width: 400px;
   text-align: left;
}

th {
   text-align: left;
   padding-left: 20px;
   /* width : 100px; */
}

#trtitle {
   border-bottom: 1px solid #DDDDDD;
}

#bottondiv {
   padding-top: 40px;
}

#button1 {
   width: 160px;
   height: 50px;
   background-color: #fff;
   border: 0.5px solid #000;
   font-weight: 600;
}

#button2 {
   width: 160px;
   height: 50px;
   background-color: #A12B2B;
   color: #ffffff;
   border: none;
   font-weight: 1000px;
}

#list {
   border: 1px solid #D2D2D2;
   font-size: 13px;
   margin-left: 900px;
}

.reply-area {
   /* border: 1px solid #000; */
   /* background-color: #D2D2D2; */
   width: 1000px;
   margin-top: 50px;
   margin-left: 460px;
}

#replywrite {
   background-color: #D2D2D2;
   /* border-bottom: 1px solid #444444; */
}

#replyinput {
   margin-left: 20px;
   width: 860px;
   height: 40px;
   font-size: 14px;
}

#replybutton {
   width: 90px;
   height: 40px;
   margin-right: 20px;
   background-color: black;
   color: white;
   font-size: 14px;
}

#replylist {
   width: 1000px;
   font-size: 14px;
   /* background-color: #e4e4e4; */
}

#replylist-tr {
   border-bottom: 1px solid #DDDDDD;
}

#imgth {
   text-align: center;
   padding-right: 30px;
}

#imgtext {
   height: 30px;
   font-size: 12px;
   color: #5e5b5b;
   display: flex;
   justify-content: center;
   align-items: center;
}

#img {
   margin-left: 23px;
}

#contentImg2 {
   margin-left: 20px;
}

#contentImg3 {
   width: 182px;
   height: 150px;
   position: absolute;
   right: 726px;
   bottom: 135px;
}

#contentImg4 {
   width: 182px;
   height: 150px;
   position: absolute;
   right: 523px;
   bottom: 135px;
}

#imgframe {
   position: relative;
}

#rec_update{
	background: transparent; 
	border: none;
	display : inline-block;
}

</style>
</head>
<body>
   <%@ include file="/views/common/headerBar.jsp" %>   


   <div class="wrap">

         <!--헤더영역 블랙라인 + 로고 -->
         

      
        
        <!--인덱스 타이틀-->
        <div id="title1">서울 여행 정보 공유 사이트</div>

        <!--게시판 타이틀-->
        <div id="title2">늴리리 커뮤니티</div>

        <!--게시글 상세보기 테이블-->
      <table class="list-area" align="center">
         <thead>
            <tr id="trtitle">
               <th>여행공유</th>
               <td>${b.boardCategory }</td>
               <th>제목</th>
               <td>${b.boardTitle }</td>

            </tr>

            <tr id="trtitle">
               <th>작성자</th>
               <td>${b.boardWriter }</td>
               <th>작성일</th>
               <td>${b.regiDate }</td>

            </tr>

            <tr id="trtitle">
               <th width="100" height="280">내용</th>
               <td colspan="4"
                  style="vertical-align: top; padding-top: 20px; padding-bottom: 20px;">${b.boardContent }</td>
            </tr>
            </thead>
         
         <tbody>

            <tr height="225">

               <th id="imgth">이미지 <br>첨부
               </th>
               <td colspan="4"><c:if test="${ empty list }">
                     첨부된 이미지가 없습니다.      

                  </c:if> <c:forEach items="${list}" var="at" varStatus="vs">
                     <c:choose>
                        <c:when test="${vs.index eq 0 }">
                           <div id="imgtext">이미지를 첨부해서 나만의 여행네컷을 만들어보세요.</div>
                           <div style="position: relative;">
                              <img
                                 src="${contextPath }/resources/img/board/photoframe_nilili_2.png"
                                 id="imgframe" alt="인생네컷" width="900" height="170">

                              <div id="img" style="position: absolute; top: 10px;">
                                 <img id="titleImg"
                                    src="${contextPath }${at.filePath}${at.changeName}"
                                    width="182" height="150">
                        </c:when>

                        <c:otherwise>

                           <!-- 상세이미지 -->
                           <img id="contentImg${vs.count}"
                              src="${contextPath }${at.filePath}${at.changeName}"
                              width="182" height="150">

                              </div>
                           </div>


                        </c:otherwise>
                     </c:choose>
                  </c:forEach>
               </td>
            </tr>

         </tbody>
      </table>


        <br>
      
      
        <!--목록으로 이동하는 버튼-->
        <div align="center">
            <button id="list" onclick="location.href='${header.referer}'">목록으로</button>
        </div>
         
      <!-- 글작성 버튼은 로그인한 회원만 볼수 있도록 작업 -->
       <!--<c:if test="${not empty loginUser}"></c:if> --> 
      
       <!--버튼-->
       
       
      <!-- 추천 기능 -->
      
         
            <c:if test="${empty loginMember }">
               추천 기능은 <button type="button" id="newLogin" onclick="redirectToAddress();"><b class="w3-text-blue">로그인</b></button> 후 사용 가능합니다.<br />
               <i class="fa fa-heart" style="font-size:16px;color:red"></i>
                        
            </c:if>
            <c:if test="${ loginMember != null }">
            
            	
            	 <button id="rec_update">
	            	 <img src="${contextPath }/resources/img/like-button.png" alt="추천 아이콘" width="50" height="50">
            		<div class="rec_count">
            		</div>
	             </button>
            </c:if>
         
    
       
       
       <!-- 트라이캐치 -->
         <%try {
            
             if(b.getBoardWriter().equals(loginMember.getMemberId())) {
               %>
                   <div align="center" id="bottondiv">
                     
                   <button id="button1" onclick="confirmDelete()">삭제하기</button>
                    
                  <button id="button2" onclick="location.href='${contextPath}/update.bo?bno=${b.boardNo }'">수정하기</button>
                </div>
               <%
                   };
               %>
            
         <%} catch(NullPointerException e){
         }%>
       <!-- 트라이캐치 -->
    

      <script>
          function confirmDelete() {
              var confirmDelete = confirm('정말 삭제하시겠습니까?');
              if (confirmDelete) {
                  // 사용자가 확인을 선택한 경우에만 삭제 요청을 보내고 페이지를 이동
                  location.href = '${contextPath}/delete.bo?bno=${b.boardNo}';
              } else {
                  // 사용자가 취소를 선택한 경우, 아무 동작도 수행하지 않습니다.
                  // 필요에 따라 다른 동작을 추가할 수 있습니다.
              }
          }
      </script>
      
      
      <c:set var="boardNo" value="${b.boardNo}" />
      <c:set var="memberNo" value="${loginMember.memberNO}" />
      
      <script>
      
         $(function(){
             // 추천버튼 클릭시(추천 추가 또는 추천 제거)
             $("#rec_update").click(function(){
                 $.ajax({
                     url: "likeInsert.bo",
                     type: "POST",
                     data: {bno : ${boardNo},
                           memberNo:"${memberNo}"},
                     success: function () {
                        console.log("여기까진성공");
                         recCount();
                     },
                     error: function(xhr, status, error) {
                         console.error("AJAX 오류 발생: " + status, error);
                         // 에러 발생 시 사용자에게 알리거나 다른 조치를 취할 수 있습니다.
                     }
                 });
             });
             
             // 게시글 추천수
             function recCount() {
                 $.ajax({
                     url: "likeCount.bo",
                     type: "POST",
                     data: {
                         bno: ${boardNo} // 적절한 방식으로 board_no를 가져와 사용
                     },
                     success: function (result) {
                         $(".rec_count").html(result);
                     },
                     error: function(xhr, status, error) {
                         console.error("AJAX 오류 발생: " + status, error);
                         // 에러 발생 시 사용자에게 알리거나 다른 조치를 취할 수 있습니다.
                     }
                 });
             }
             recCount(); // 처음 시작했을 때 실행되도록 해당 함수 호출
         });
         
      </script>

        <!--댓글작성-->
           <table class="reply-area" >
               <tbody id="replywrite">
                   <tr>
                       <td><input type="text" id="replyinput" placeholder="최대 50자까지 작성 가능합니다."></td>
                       <td><button onclick="insertReply();" id="replybutton">댓글작성</button></td>
                   </tr>
               </tbody>
   
           </table>
        <div id="reply">
           <table align="center" id="replylist">
               <tbody>
                   <tr>
                       <td width="70%" style="padding-left: 20px;">내용</td>
                       <td width="15%">작성자</td>
                       <td width="15%"style="padding-right: 20px;">작성일</td>
                   </tr>
               </tbody>
           </table>
        </div>
        
        
        <script>
      
         $(function(){
            selectReplyList();
         });
      
         
      
         function selectReplyList(){ //댓글목록 조회 함수
            //목록 조회해와서 tbody에 tr 만들어넣기 mapping 주소 : replyList.bo
            
            $.ajax({
               url:"replyList.bo",
               data : {bno : ${b.boardNo}},
               success : function(result){
                  var str = "";
                  
                  for (var i in result) {
                      
                      str += "<tr id='replylist-tr'>" +
                             "<td width='70%' style='padding-left: 20px;'>" + result[i].replyContent + "</td>" +
                             "<td width='15%'>" + result[i].replyWriter + "</td>" +
                             "<td width='15%' style='padding-right: 20px;'>" + result[i].cdate + "</td>" +
                             "</tr>";
                  }
                  
                  $("#reply tbody").html(str);
               },
               error : function(){
                  console.log("통신오류");
               }
            });
            
         }
      
      
         function insertReply(){
            
            $.ajax({
               url : "insertReply.bo",
               data : {
                  content:$("#replyinput").val(),
                  bno : ${b.boardNo}
               },
               type : "post",
               success : function(result){
                  
                  if(result>0){//성공
                     alert("댓글 작성 성공");
                     //추가된 댓글목록 재조회   
                     selectReplyList();
                     $("#replyinput").val("");
                  }else{//실패
                     alert("댓글 작성 실패");
                  }
               },
               error : function(){
                  console.log("통신오류");
               }
            
            });
            
         }
      
      
      
      </script>
      
       <script>
        function redirectToAddress() {
            // 주소를 담고 이동할 URL
            var address = "http://localhost:8888/semi/";
            
            // JavaScript의 window.location을 사용하여 페이지 이동
            window.location.href = address;
        }
    </script>

         
      <!--푸터영역-->
        <div id="footer" align="center">
            <hr>
    
            <span id="f_text">
                고객문의  |  이용약관  | 개인정보취급방침  |  사이트맵
                <br><br>
                서울시 영등포구 선유동 2로 57 이레빌딩 20층 E강의장  TEL 1544-9970
                <br>
                COPYRIGHT ⓒ  1988-2023 KH IEI ALL Right Reserved
                
            </span>
        </div>
   </div>
   
   
</body>
</html>
