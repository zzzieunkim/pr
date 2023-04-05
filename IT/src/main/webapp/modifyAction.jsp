<!-- 실제로 글쓰기를 눌러서 만들어주는 Action페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.BoardDao" %>
<%@ page import="dto.Cominfo" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트 문장사용 -->
<% request.setCharacterEncoding("UTF-8"); %> <!-- 건너오는 모든 파일을 UTF-8로 -->
   <jsp:useBean id="info" class="dto.Cominfo" scope="page"></jsp:useBean>
<%-- 	<jsp:setProperty property="*" name="info"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 확인창</title>
</head>
<body>
  <%
  
 
  
  String mem_id = request.getParameter("mem_id");

  String com_bct = request.getParameter("com_bct");
  String com_name = request.getParameter("com_name");
  String com_con = request.getParameter("com_con");

  // 로그인 된 사람은 회원가입페이지에 들어갈수 없다
  /*if(session.getAttribute("mem_id") != null )
  {
      mem_id = (String) session.getAttribute("mem_id");
  } */

  if(mem_id != null){

      session.setAttribute("mem_id",mem_id);

      session.setAttribute("com_name",com_name);
      session.setAttribute("com_bct",com_bct);
      session.setAttribute("com_con",com_con);

      response.sendRedirect("board_list.jsp");
  }
  
  /* String com_mem_id = null; */
  // 로그인 된 사람은 회원가입페이지에 들어갈수 없다
  if(session.getAttribute("mem_id") != null )
  {
      mem_id = (String) session.getAttribute("mem_id");
  }
      
  if(mem_id == null)
  {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('로그인을 하세요')");
      script.println("location.href = 'login_001.jsp'");
      script.println("</script>");
  } 
  
  int com_num = 0; 
  if (request.getParameter("com_num") != null)
  {
      com_num = Integer.parseInt(request.getParameter("com_num"));
  }
  
  if (com_num == 0)
  {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('유효하지 않은 글입니다')");
      script.println("location.href = 'board_list.jsp'");
      script.println("</script>");
  } 
  
  Cominfo ci = new BoardDao().getBoard(com_num);
        if (!mem_id.equals(ci.getCom_mem_id()))
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('권한이 없습니다')");
            script.println("location.href = 'board_list.jsp'");
            script.println("</script>");
        }else {
        if(request.getParameter("com_name") == null || ci.getCom_con() == null
            || request.getParameter("com_name").equals("") || request.getParameter("com_con").equals("")) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
        } else{
            BoardDao bd = new BoardDao();
            int result = bd.update(info);
                if(result == -1){ // 글수정에 실패했을 경우
                    PrintWriter script = response.getWriter(); //하나의 스크립트 문장을 넣을 수 있도록.
                    script.println("<script>");
                    script.println("alert('글 수정에 실패했습니다.')");
                    script.println("history.back()");
                    script.println("</script>");
                }
                else { // 글수정에 성공했을 경우
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("location.href= 'board_list.jsp'");
                    script.println("</script>");
                    }
            }
        }
    %>
</body>
</html>
