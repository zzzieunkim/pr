<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTf-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>고객센터</title>
	 
	 <link rel="stylesheet" type="text/css" href="css/header_footer.css">
	 <link rel="stylesheet" type="text/css" href="css/cscenter_faq.css">
	 <link rel="stylesheet" type="text/css" href="css/cscenter.css">
	 
	 
	 <!-- faq js -->
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	 <script src="js/cscenter_faq.js" ></script>
	 
	 
	 <style type="text/css">
    
	    	section .cscenter_menu_wrap .cscenter_menu:nth-child(2) {
	      background-color: rgba(126, 125, 203, 0.26);
	    }
    
    </style>


</head>


<body>

<!--헤더부분-->

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

		<div class="cscenter_faq" >
		
			<div id="faq_title_wrap" >
			
				<h1>FAQ</h1>
				<h3>자주 하는 질문</h3>
			
			</div>
		
		
			<div class="faq_list_wrap" >
			

			
			
					<a href="">
					<div id="faq_box_big1" onclick="faq1" >
		
						<p>TOP1</p>

						<p>해외항공권 문의 & 답변 확인방법</p>
						
							<div id="faq_re1" >					
								이 질문에 대한 대답은 ~~
							</div>
		
					</div>
					</a>
					
					<a href="">
					<div id="faq_box_big2" >
					
					
						<p>TOP2</p>

						<p>항공원 예약 취소 방범 및 취소 완료 확인은 어떻게 하나요?</p>
					
					</div>
					</a>
					
					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP3</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>
					
					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP4</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>

					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP5</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>

					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP6</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>

					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP7</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>

					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP8</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>

					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP9</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>

					<a href="">
					<div class="faq_box_small" >
					
						<p>TOP10</p>

						<p>예약내역 조회/확인은 어떻게 하나요?</p>
					
					</div></a>
					
				</div>
				</div>
				
				
				
				<!-- /////////////////////// 질문 클릭하면 나오는 답변 창 시작 -->
				
				
						
		</div>
		
		
	
	</section>



	<footer>
    	<jsp:include page="footer.jsp"/>
	</footer>


</div>
</body>

</html>