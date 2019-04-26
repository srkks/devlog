<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- custom CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/board/css/board.css'/>"/>

</head>
<body>
	<!--여백이 없는 반응형 웹컨테이너 fluid-->
    <div class="container-fluid">
        <div class="row d-flex d-md-block flex-nowrap wrapper">
            <nav class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
                <div class="list-group border-0 card text-center text-md-left">
                    <a href="<c:url value='/devlog/'/>" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
                        <span class="d-none d-md-inline" style="font-size:40px;">Devlog2</span>
                    </a>
                    <a href="${path}/devlog/" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
                        <img style="width:20px;" src="<c:url value='/resources/img/home.svg'/>"/><span class="d-none d-md-inline">메인</span>
                    </a>
                    <a href="${path}/devlog/posting/" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
                        <img style="width:20px;" src="<c:url value='/resources/img/user.svg'/>"/><span class="d-none d-md-inline">Posting</span>
                    </a>
                    <a href="${path}/devlog/board/list" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
                        <img style="width:20px;" src="<c:url value='/resources/img/board.svg'/>"/><span class="d-none d-md-inline">방명록&자유게시판</span>
                    </a>
                    <a href="#search" class="list-group-item d-inline-block collapsed"
                        data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
                        <img style="width:20px;" src="<c:url value='/resources/img/search.svg'/>"/><span class="d-none d-md-inline">검색</span>
                    </a>
                    <div class="collapse" id="search">
                        <div class="input-group p-2" style="background-color: #1c1c1c;">
                           <gcse:search> 
                            <input type="text" class="form-control" placeholder="내용을 입력하세요.">
                       	  </gcse:search>
                        </div>
                    </div>
                </div>
            </nav>
            <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
                <div class="page-header mt-3">
                    <h2>글 수정</h2>
                </div>
               		<p class="lead">게시글을 수정합니다..</p>
                	<hr>
                <form class="pt-3" role="form" action="/devlog/board/modify" method="post" style="max-width:920px;">
                 	<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        			<input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    			<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
					<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
                       	
                 	<div class="form-group">
  						<label>Bno</label> 
  						<input class="form-control" name='bno' value='<c:out value="${board.bno }"/>' readonly="readonly">
					</div>				
					<div class="form-group">
  						<label>Title</label> 
  						<input class="form-control" id="title" name='title' value='<c:out value="${board.title }"/>' >
					</div>
					<div class="form-group">
  						<label>Text area</label>
  						<textarea class="form-control" id="content" rows="3" name='content' ><c:out value="${board.content}"/></textarea>
					</div>
					<div class="form-group">
  						<label>Writer</label> 
  						<input class="form-control" name='writer' value='<c:out value="${board.writer}"/>' readonly="readonly">            
					</div>
                   
                    <button type="submit" id="btnModify" class="btn btn-secondary">수정하기</button>
                    <button type="submit" id="btnRemove" data-oper='remove' class="btn btn-danger">Remove</button>
  					<button type="submit" id="btnList" data-oper='list' class="btn btn-info">List</button>
                </form>
                <footer class="text-center" style="max-width:920px;">
                    <p>Copyright &copy; 2019 <b>김기성</b> All Rights Reserved.</p>
                </footer>
            </main>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.0.js" integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	<%-- 페이지 설정 스크립트 --%>
  	<script type="text/javascript">
		$(document).ready(function() {
			
			var cx = '007988835491953345922:1foynco_pdw';
	        var gcse = document.createElement('script');
	        gcse.type = 'text/javascript';
	        gcse.async = true;
	        gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
	        var s = document.getElementsByTagName('script')[0];
	        s.parentNode.insertBefore(gcse, s);
			
			
			
			
			// 글자수만 제한
			var check = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,20}$/;
			var checkPW = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{1,20}$/;
			var checkContent = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,8000}$/;  
			
			$("#btnModify").on("click",function(){
				if(!check.test($("#title").val())){
					alert('제목을 2~20자로 입력해주세요.')
					$("#title").focus();
					return false;
				}
				if(!checkContent.test($("#content").val())){
					alert('내용을 입력해주세요.')
					$("#content").focus();
					return false;
				}
				$("#form").submit();
			});
			
			
			
		var formObj = $("form");
		  
		  $('#btnRemove, #btnList').on("click", function(e){
	    	e.preventDefault(); 
	    	var operation = $(this).data("oper");
	        console.log(operation);
	    
	    	if(operation ==='remove'){
	    		formObj.attr("action", "/devlog/board/remove");
	    	}else if(operation === 'list'){
	     		 //move to list
	      		formObj.attr("action", "/devlog/board/list").attr("method","get");
	   		    var pageNumTag = $("input[name='pageNum']").clone();
	     		var amountTag = $("input[name='amount']").clone();
	      		var keywordTag = $("input[name='keyword']").clone();
	      		var typeTag = $("input[name='type']").clone();      
	            formObj.empty();
	            formObj.append(pageNumTag);
	      		formObj.append(amountTag);
	      		formObj.append(keywordTag);
	      		formObj.append(typeTag);	       
	    	}
		    formObj.submit();
	  	});


		
		
}); <%-- $(document).ready(function(){ 종료 --%>		
</script>
  
  </body>
</html>
