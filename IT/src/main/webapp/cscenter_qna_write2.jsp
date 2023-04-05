<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="dto.QNA_MD" %>
    <%@page import="dao.N_controller" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class= "dao.N_controller"/>

<% 
request.setCharacterEncoding("utf-8");

String qna_mem_id = (String) session.getAttribute("ID");



QNA_MD md = new QNA_MD();

String qna_fil = request.getParameter("qna_fil");
String qna_title =request.getParameter("qna_title");
//String writer =request.getParameter("qna_mem_id");
String qna_con =request.getParameter("qna_con");
String qna_img = request.getParameter("qna_img");


md.setQna_fil(qna_fil);
md.setQna_title(qna_title);
md.setQna_mem_id(qna_mem_id);
md.setQna_con(qna_con);
md.setQna_img(qna_img);

//md.setViewcount(viewcount);
//md.setNowdate(nowdate);


user.Q_insert(md);

//response.sendRedirect("N_list.jsp"); //form 버튼 없이 페이지를 넘겨준다. 


%>

<script>
    alert("등록이 완료되었습니다.");
    location.href = "cscenter_qna_list.jsp";
</script>



</body>
</html>