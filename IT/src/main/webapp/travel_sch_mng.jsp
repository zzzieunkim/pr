<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>일정짜기</title>
        <link rel="stylesheet" href="css/travel_sch_mng.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

        </script>
        <script src="./항공테스트.js">

        </script>
    
        <script>
            
//             function widenlist(){

//                 $(".schlist").toggle();

//             }



            function addlist(name){

                var plusUl = document.createElement("ul");
                var newLi =          "<li>" 
                    + "<div class='listtitlewrap'>"
                    +"    <div class='listtitle' id='hoianresort'>"                      
                    +    name
                    +    "</div>"
                    +    "<div class='listremove' onclick='removeListItem(this)'>"
                    +    "삭제"
                    +    "</div>"
                    +    "</div>"
                    +    "<div class='details'>"
                    +        "<div class='memos'>"
                    +          "<ul>"
                    +         "</ul>"
                    +        "</div>"
                    +        "<div class='btns'>"
                    +         "<button id='addmemo1' onclick='openModal()'>메모추가</button>"
                    +"<div id='memo-modal' class='modal'>"
                    +"    <div class='modal-content'>"
                    +"                 <label for='memo-textarea' style ='font-size : 15px;'>메모</label>"
                    +"                  <textarea id='memo-textarea' style='margin : 0 10px 10px 10px;'></textarea>"
                    +"                   <div class ='confirmnclose'>"
                    +"                        <div class='close' onclick='addMemo()' style='float : left;'>확인</div>"
                    +"                        <div class='close' onclick='closeModal()' style = 'float:right;'>취소</div>"
                    +"                    </div>"
                    +"              </div>"
                    +"        </div> "
                    +         "<button class = 'addmoney' style ='margin-left : 70px;' id='moneymodal' onclick='openMoneyModal()'>가계부추가</button>"
                    +        "</div>"
                    +    "</div>"
                    +"</li>   "
                plusUl.innerHTML = newLi;
                console.log(plusUl);
                //console.log(document.getElementById("schlist"));
                document.getElementById("schlist").appendChild(plusUl);

          $(document).on('click', '.memo', function() {
                var memo_id = $(this).data('id');
                var memo_title = $(this).find('.memo-title').text();
                var memo_content = $(this).find('.memo-content').text();
  
                 $('#modal-memo-id').val(memo_id);
                 $('#modal-memo-title').val(memo_title);
                 $('#modal-memo-content').val(memo_content);
  
                $('#modal-memos').modal('show');
                    });
            }

            function removedivs(button){
                const divToRemove = button.parentNode;
                const container = document.getElementById("container");
                container.removeChild(divToRemove);
               const removeButton = document.getElementById("remove");
                 removeButton.onclick = function() {


                 }
            }
            




            function removeListItem(el) {
                 var li = el.parentNode.parentNode; // 부모 노드(li)를 찾기 위해 두 번의 parentNode 호출
                    li.parentNode.removeChild(li); // 부모 노드에서 해당 li를 삭제
                }

                 function openModal() {
                var modal = document.getElementById("memo-modal");
                modal.style.display = "block";
                }

                
                 function openMoneyModal() {
                	  var modal = document.getElementById("moneyback");
                	  modal.classList.add("show");
                	}
   
                function addMemo() {
                var memo = document.getElementById("memo-textarea").value;
                var memos = document.querySelectorAll(".memos ul")[0];
                var li = document.createElement("li");
                li.textContent = memo;
                memos.appendChild(li);
                closeModal();
                document.getElementById("memo-textarea").value = ""

                }

                function closeModal() {
                    var memo = document.getElementById("memo-textarea").value;
                    var modal = document.getElementById("memo-modal");
                    var memoInput = document.getElementById("memoInput");
                    memo =""; 
                    modal.style.display = "none";
                     $(".addmemo1").show();
                }


	function addDays(){
		const fromDate = newDate(document.getElementById(""))
	}
                
                
	function show() {
		  document.querySelector(".background").classList.toggle("show");
		}

	function close() { 
		  document.querySelector(".background").classList.remove("show");
		}
	
	
// 	esc를 눌렀을 때 모달창이 닫히게 하는 기능 
    window.addEventListener("keydown", function (event) {
        if (event.key === "Escape" && document.querySelector(".background").classList.contains("show")) {
        	document.querySelector(".background").classList.remove("show");
        }
      });

    window.addEventListener("keydown", function (event) {
        if (event.key === "Escape" && document.getElementById("moneyback").classList.contains("show")) {
        	document.getElementById("moneyback").classList.remove("show");
        }
      });


        </script>


    </head>
    <style type="text/css">
    </style>
    <body > 





    <section>
    	<div class="mainwrap">
    		<div class="leftsidebar">
                <div class="titleanaddate">
    			<div class="destitle">
    			<%
  					// 세션 객체에서 저장된 날짜 값을 가져옴
  					
  				String destination = (String) session.getAttribute("coouncity");
    			 out.println(destination);%>
    			</div>
    			<div class="destitle2">Da Nang</div>
    			<div class="traveldate">
    			<%
  					// 세션 객체에서 저장된 날짜 값을 가져옴
  				String fromDate = (String) session.getAttribute("fromDate");
  				String toDate = (String) session.getAttribute("toDate");
			
			
    			 out.println(fromDate);%> ~ <% out.println(toDate); %>
				
    			</div>
            </div>
    			<div class="daysandedit">
                    <div class="dayeditwiden">
    				<div class="dayswrap">
    				<%
    				int diff = (int) session.getAttribute("diff");
 					 for (int i = 0; i <= diff; i++) {
					%>
   					 <div class="Day<%= i %>" style="margin-bottom : 10px; width: 280px;">Day<%=i+1 %>
   					  <div class="widen" >펼쳐보기</div>
   					 
   					 <div class= "edit">편집</div>
   					
   					              <div class="schlistwrap">
              <div class="schlist" id="schlist">
                <ul>
                    <li>
                        <div class="listtitlewrap" id ="container">
                        <div class="listtitle" id="hoianresort">                      
                        실크센스 리조트 호이안
                        </div>
                        <div class="listremove" id ="remove" onclick="removeListItem(this)">
                        삭제
                        </div>
                        </div>
                        <div class="details">
                            <div class="categories">숙소 호이안</div>
                            <div class="memos">
                              <ul>
                                 <li>체크인 시간 15:00</li>
                                 <li>동행인 추가하고 리셉션에서 여권보여주기</li>                           
                                 <li>체크인하고 근처에서 반미먹기</li>
                             </ul>
                            </div>
                            <div class="btns">
	                             <button id ="addmemo1" style ="float : left;" onclick="openModal()" class="addmemo100">메모추가</button> 
	                              <div class="background" id = "memoback">
	                           	 	<div class="window">                           	 
	                           	 		<div class="popup" style ="padding : 30px;">메모
	                             <div id="memo-modal" class="modal">
	                                 <div class="modal-content" style ="padding : 10px;">
	                                      <textarea id="memo-textarea" style="margin : 10px 10px 10px 10px; border:none; width: 500px; height: 400px; top: 50%;" placeholder ="잊기 쉬운 정보들을 메모하세요. " autofocus></textarea>
	                                        <div class ="confirmnclose">
	                                            <div class="close" onclick="addMemo()" style="float : left;">확인</div>
	                                            <div class="close" onclick="closeModal()" style = "float:right;">취소</div>
	                                        </div>
	                                  </div>
	                          				  </div> 
	                      
	                           	 		</div>
	                           		</div>
	                           	</div>
	
	                             <button class="addmoney" style ="margin-left : 70px;" id="moneymodal" onclick="openMoneyModal()">가계부추가</button>
	                           	 <div class="background" id="moneyback" >
	                           	 	<div class="window">                           	 
	                           	 		<div class="popup" style ="padding : 30px;">가계부
	                             		<div id="money-modal" class="modal">
	                                 	<div class="modal-content" style ="padding : 10px;">
	                                      <textarea id="money-textarea" style="margin : 10px 10px 10px 10px; border:none; width: 500px; height: 400px; top: 50%;" placeholder ="잊기 쉬운 정보들을 메모하세요. " autofocus></textarea>
	                                        <div class ="confirmnclose">
	                                            <div class="close" onclick="addMemo()" style="float : left;">확인</div>
	                                            <div class="close" onclick="closeModal()" style = "float:right;">취소</div>
	                                        </div>
	                                  </div>
	                          				  </div> 
	                      
	                           	 		</div>
	                           		</div>
	                           	</div>
	                            </div>
                        </div>
                    </li>   
                </ul>
                <ul>
                    <li>반미맛집A</li>
                </ul>
                <ul>
                    <li>반미맛집B</li>
                </ul>
                <ul>
                    <li>쌀국수맛집A</li>
                </ul>
              </div>
          </div>
   					
   					
   					</div>
					<%
					  }
					%>
    				
			 			
    				</div>
                        
    			 </div>
    		  </div>

        </div>

            <div class="rightsidebar">
                <div class="rightsearchwrap">
                    <div class="searchex">가고 싶은 장소를 검색해보세요</div>
                    <div class="searchtnbtn">
                    <input type="text" class="searcht" size = "20">
                    <button id="searchbtn">검색
                    </div>
                </div>
                
                <div class="rectitle">추천장소</div>
                <div class="recpicswrap">
                    <ul>
                        <li>
                            <div class="recpicntwrap">
                            <img src="./schmngimgs//핑크성당.jpg">
                                <div class="recinfo">떤딘성당</div>
                                <button onclick ="addlist('떤딘성당')" class = "addbtn">추가하기</button>
                            </div>
                        </li>
                        <li>
                              <div class="recpicntwrap">
                                <img src="./schmngimgs/소원배.jpg">
                                <div class="recinfo">소원배</div>
                                <button onclick ="addlist('소원배')" class = "addbtn">추가하기</button>
                            </div>
                            </li>
                        
                        <li>
                            <div class="recpicntwrap">
                            <img src="./schmngimgs/바나힐.jpg">
                                 <div class="recinfo">바나힐</div>
                                <button onclick ="addlist('바나힐')" class = "addbtn">추가하기</button>
                            </div>
                            </li>
                        <li>
                          <div class="recpicntwrap">
                            <img src="./schmngimgs/oldtown.jpg">
                                 <div class="recinfo">올드타운</div>
                                <button onclick ="addlist('올드타운')" class = "addbtn">추가하기</button>
                            </div>
                                </li>
                        <li>
                              <div class="recpicntwrap">
                            <img src="./schmngimgs/마담콴.jpg">
                                 <div class="recinfo">마담콴</div>
                                <button onclick ="addlist('마담콴')" class = "addbtn">추가하기</button>
                            </div>
                                </li>

                    </ul>
                </div>
          
 

            </div>
        </div>
    		<div class="gogolmaps">
    			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.9314130894713!2d108.22039202795808!3d16.069048553316968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218321ae9468b%3A0x7f3c3d5f44588746!2zQ-G7mW5nIEPDoCBQaMOq!5e0!3m2!1sen!2skr!4v1677225856072!5m2!1sen!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    		</div>


    </section>



    
       
    </body>
    
    <script>	
    
    const addMoneyButtons = document.querySelectorAll('.addmoney');
    for (let i = 0; i < addMoneyButtons.length; i++) {
      addMoneyButtons[i].addEventListener('click', show);
    }

    const closeButtons = document.querySelectorAll('.close');
    for (let i = 0; i < closeButtons.length; i++) {
      closeButtons[i].addEventListener('click', close);
    }
    
    
    const addMemo100Buttons = document.querySelectorAll('.addmemo100');
    for (let i = 0; i < addMoneyButtons.length; i++) {
      addMemo100Buttons[i].addEventListener('click', show);
    }
    
    document.getElementById("addmemo1").addEventListener("click", function() {
        document.getElementById("memo-textarea").focus();
          });
    

</script>
</html>