<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="dto.N_MD" %>
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



N_MD md = new N_MD();

//String numString = request.getParameter("num");
//int num = (numString == null) ? 0 : Integer.parseInt(numString);

//int num = Integer.parseInt(request.getParameter("num"));
//out.println(num);


String title =request.getParameter("title");
String writer =request.getParameter("writer");
String con =request.getParameter("con");
//String pw =request.getParameter("pw");
//int viewcount =Integer.parseInt(request.getParameter("view"));
//String nowdate =request.getParameter("nowdate");


//md.setNum(num);
md.setNot_title(title);
md.setNot_writer(writer);
md.setNot_con(con);
//md.setPw(pw);

//md.setViewcount(viewcount);
//md.setNowdate(nowdate);


user.insert(md);

//response.sendRedirect("N_list.jsp"); //form 버튼 없이 페이지를 넘겨준다. 


%>

<script>
    alert("등록이 완료되었습니다.");
    location.href = "N_list.jsp";
</script>



</body>
</html>