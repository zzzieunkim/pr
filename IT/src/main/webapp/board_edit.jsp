<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.BoardDao" %>
<%@ page import="dto.Cominfo" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트 문장사용 -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/com_css.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<% 


	// 로그인한 사용자라면 com_mem_id에 값이 담기게 될 것이다.
		String mem_id = null;
		String com_num = null;
		String com_bct = null;
		String com_name = null;
		String com_con = null;
  				if(session.getAttribute("mem_id") != null){
  					mem_id = (String)session.getAttribute("mem_id");
  				}
  				if(session.getAttribute("com_num") != null){
  					com_num = (String)session.getAttribute("com_num");
  				}
  				if(session.getAttribute("com_bct") != null){
  					com_bct = (String)session.getAttribute("com_bct");
  				}
  				if(session.getAttribute("com_name") != null){
  					com_name = (String)session.getAttribute("com_name");
  				}
  				if(session.getAttribute("com_con") != null){
  					com_con = (String)session.getAttribute("com_con");
  				}
/*     if (session.getAttribute("mem_id") != null)
    {
    	mem_id = (String)session.getAttribute("mem_id");
    }
    if (mem_id == null)
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요')");
        script.println("location.href = 'login001.jsp'");
        script.println("</script>");
        return; // 메서드 실행 종료
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
        return;
    }
  
    Cominfo ci = new BoardDao().getBoard(com_num); 
    if (!mem_id.equals(ci.getCom_mem_id()))
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('수정 가능한 권한이 없습니다')");
        script.println("location.href = 'board_list.jsp'");
        script.println("</script>");
        return;
    } */
    
%>
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <form action="modifyAction.jsp?com_num=<%=com_num%>" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                 <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text"  name="com_name" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                   <dl>
                        <dt>카테고리</dt>
                        <dd>
                      	<select class="catediv1" name="com_bct">
                      	<option value="전체" selected>전체</option>
                      	<option value="동행구인" >동행구인</option>
                      	<option value="중고장터">중고장터</option>
                      	</select>
                        </dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>
                        <% 
                        out.println(mem_id+"님");
                        %>
                        <input type="hidden" name="com_mem_id" value="<%=mem_id%>">
						<!-- hidden으로 값을 넘겨줘야 db에서 막히지 않음 fk 요소라서 민감 중요 -->
                        </dd>
                    </dl>
                      
                </div>
                <div class="cont"> 
                    <textarea placeholder="내용 입력" name="com_con"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
               <!--  <a href="view.html" class="on">수정</a> -->
                <input class="on" type="submit" value="수정">
                <a href="board_list.jsp">취소</a>
            </div>
        </div>
        </form>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>