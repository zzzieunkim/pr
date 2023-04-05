<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import ="dto.QNA_MD" %>
<%@page import="dao.N_controller" %>



    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>

<link rel="stylesheet" href="css/cscenter_qna.css">

</head>
<body>
	<!-- 게시판 등록 -->
	
	<header>
 <jsp:include page="header.jsp" />
</header>

	<section>
	
	<div id="cs_qna_wrap" >
		<h2>직접 문의하기</h2>
		<form action="cscenter_qna_write2.jsp" method="post"
			enctype="multipart/form-data" name="boardform">
			<table>
			
				<tr>
					<td class="td_left">카테고리 설정
					
						
					</td>
					
					<td class="td_right">
						<select name="qna_fil" id="qna_fil" required="required">
						
							<option>문의내용 선택</option>
							<option>항공예약</option>
							<option>투어예약</option>
							<option>쇼핑</option>
							<option>교환/환불</option>
							<option>기타</option>
							
						</select></td>
				</tr>


				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
					<td class="td_right"><input name="qna_title" type="text"
						id="qna_title" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
					<td><textarea id="qna_con" name="qna_con"
							cols="40" rows="15" required="required"></textarea></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_FILE"> 파일 첨부 </label></td>
					<td class="td_right"><input name="qna_img" type="file"
						id="qna_img" /></td>
				</tr>
			</table>
			<section id="commandCell">
				<input type="submit" value="등록">
			</section>
		</form>
		
		</div>
	</section>
	<!-- 게시판 등록 -->
	
	<header>
 <jsp:include page="footer.jsp" />
</header>
</body>
</html>