<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/travelogwrite.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>




<body>
	<header>
	   <jsp:include page="header.jsp" />
	</header> 
	

	<form action="writearrange.jsp" method="post"
		enctype="multipart/form-data">
		<div class="mainwrap">
			<div class="maintitle">Ʈ����α�</div>
			<div class="contentwrap">
				<div class="textareawrap">
					<div class="title">
						<input type="text" id="log_title" name="log_title"
							placeholder="����� ����">
					</div>
					<div class="whereandwhen">
						<div class="title">
							<input type="text" id="log_where" name="log_where"
								placeholder="������">
						</div>
						<div class="title">
							<input type="text" id="log_depdate" name="log_depdate"
								placeholder="���������">
						</div>
						<div class="title">
							<input type="text" id="log_arrdate" name="log_arrdate"
								placeholder="��߳����">
						</div>
					</div>
				

				<div class="title">
					<input type="text" id="log_con" placeholder="����� ����">
				</div>
				</div>
				<label for="fileName1">���ϸ�1 : </label><input type="file"
					name="file1" id="file1">
				<!-- 			<label for = "fileName2">���ϸ�2 : </label><input type="file" name="file2" id = "file2"> -->
				<!-- 			<label for = "fileName3">���ϸ�3 : </label><input type="file" name="file3" id = "file3"> -->
				<!-- 			<label for = "fileName4">���ϸ�4 : </label><input type="file" name="file4" id = "file4"> -->
				<!-- 			<label for = "fileName5">���ϸ�5 : </label><input type="file" name="file5" id = "file5"> -->
				<!-- 		����� DB�� ��������... -->


			</div>
		</div>
		<input type="submit">���
		<button type="button">
			<a href="traveloglist.jsp">���</a>
		</button>
	</form>
	
		<footer>
    	<jsp:include page="footer.jsp"/>
	</footer>
	
</body>
</html>