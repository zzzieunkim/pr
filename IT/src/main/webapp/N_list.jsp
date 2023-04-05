<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.util.ArrayList" %>
    
    <%@page import="dto.N_MD" %>
    <%@page import="dao.N_controller" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/css.css">
    <link rel="stylesheet" href="css/cscenter.css">
    
    <style type="text/css">
    
	    	section .cscenter_menu_wrap .cscenter_menu:first-child {
	      background-color: rgba(126, 125, 203, 0.26);
	    }
    
    </style>
    
</head>


<jsp:useBean id="user" class="dao.N_controller"/> 



<body>

<header>
   <jsp:include page="header.jsp" />
</header> 
<section>


	<div class="cscenter" >

			<div class="cscenter_menu_wrap" >
			
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="N_list.jsp" >공지사항</a></p>
						</div>	
					
					</div>
					
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="cscenter_faq.jsp">자주하는 질문</a></p>
						</div>
					
					</div>
					
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="cscenter_qna_list.jsp">직접 문의하기</a></p>

						</div>

					</div>
				
				</div>
							
		</div>


    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
           <!-- <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>  --> 
        </div>
        
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                
               
                <div >
               <%
               
               ArrayList<N_MD> N_arr = user.select(); 
               
               //int i = N_arr.size();
               
                for(int i=0 ; i <N_arr.size(); i++) {  
                	
                %>
                	
                    <div class="num"><%=N_arr.get(i).getNot_num() %></div>
                    <div class="title"><a href="N_view.jsp?not_num=<%=N_arr.get(i).getNot_num()%>"><%=N_arr.get(i).getNot_title()%></a></div>
                    <div class="writer"><%=N_arr.get(i).getNot_writer() %></div>
                    <div class="date"><%=N_arr.get(i).getNot_date() %></div>
                    <div class="count"><%=N_arr.get(i).getNot_view() %></div>
                                 
                <%    
                }
                %>
                </div>
                
            </div>
            
            
       
            <div class="bt_wrap">
                <a href="N_wirte.jsp" class="on">등록</a>
                <!--<a href="#">수정</a>-->
            </div>
            
            
          
            
        </div>
    </div>
    </section>
    
    <footer>
   <jsp:include page="footer.jsp"/>
	</footer>
	
</body>
</html> 