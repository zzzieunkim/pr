<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="dto.N_MD" %>
    <%@page import="dao.N_controller" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/css.css">
</head>

<%


String title = request.getParameter("title");
String num = request.getParameter("num"); //int여도 getParameter로 받으면 String으로 받는다!
String writer = request.getParameter("writer");
String notice_date = request.getParameter("notice_date");
String con = request.getParameter("con");
String viewcount = request.getParameter("n_view");


%>
<body>

<header>
 <jsp:include page="header.jsp" />
</header>

<section style="height: 700px;">
<form action="N_edit2.jsp">
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항 수정</strong>

        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" value="<%=title %>" name="title"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" value="<%=writer %>" name="writer" readonly="readonly"></dd>
                    </dl>
                    
                </div>
                <div class="cont">
                    <textarea  name="con"><%=con %></textarea>
                    
                    <input type="text" value="<%=num %>" name="num" hidden="hidden">
                    <input type="text" value="<%=viewcount %>" name="viewcount" hidden="hidden">
                </div>
            </div>
            <div class="bt_wrap">
                <input type="submit" value="수정">
                <a href="N_view.jsp">취소</a>
            </div>
        </div>
    </div>
   </form>
   
   </section>
   
   <footer>
    	<jsp:include page="footer.jsp"/>
	</footer>
   
</body>
</html>