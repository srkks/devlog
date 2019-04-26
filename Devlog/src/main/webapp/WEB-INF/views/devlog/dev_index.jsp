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
<style>
main { 
  background: url(/resources/img/main_back.png) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  opacity : 0.5;
}
</style>
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
                           <%-- 구글 검색창 --%>
                           <gcse:search> 
                            <input type="text" class="form-control" placeholder="내용을 입력하세요.">
                       	  </gcse:search>
                        </div>
                    </div>
                </div>
            </nav>
            <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
               
                    <%-- <img src="<c:url value='/resources/img/main_back.png'/>/" class="img-fluid"> --%>
                
               
                <footer class="text-center" style="max-width:1080px;">
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
	<script>
  	<%-- (function(){ 이것은 $(document).ready(function(){ 과 같다. --%>
	(function() {
    	var cx = '007988835491953345922:1foynco_pdw';
    	var gcse = document.createElement('script');
    		gcse.type = 'text/javascript';
    		gcse.async = true;
    		gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    	var s = document.getElementsByTagName('script')[0];
    		s.parentNode.insertBefore(gcse, s);
  	})();
</script>

</body>
</html>