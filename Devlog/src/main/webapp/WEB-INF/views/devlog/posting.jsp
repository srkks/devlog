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
                	<ul class="list-unstyled">
                    <li class="media">
                      <img src="<c:url value='/resources/post/img/cloud.jpg'/>/" class="mr-3" alt="Cloud Computing" width="160px" height="160px">
                      <div class="media-body">
                        <h5 class="mt-0 mb-1">클라우드 컴퓨팅</h5>
                        - 클라우드(구름) : 인터넷을 비유적으로 표현한 것.<br>
                  		    예를들어, 처리해야할 데이터가 몇억건 정도 되는데 컴퓨터 한 대로 처리하려면 1년이 걸린다고 가정했을 때,<br>
                  		     인터넷을 통해 분석해야할 데이터를 클라우드 컴퓨터로 전송한다.<br>
                  		     그리고 처리된 결과를 인터넷을 통해 받아서 내 컴퓨터의 화면에 표시한다.<br>
						<strong>- 클라우드 컴퓨팅의 핵심적 아이디어는 인터넷이다.</strong>
                      </div>
                    </li>
                    <li class="media my-4">
                      <img src="<c:url value='/resources/post/img/ec2.png'/>/" class="mr-3" alt="AWS EC2" width="160px" height="160px">
                      <div class="media-body">
                        <h5 class="mt-0 mb-1">AWS EC2</h5>
                        <strong>- AWS의 대표적 상품.</strong> 가장 먼저 생겨났고, 가장 범용적인 서비스이다.<br>
   						독립된 컴퓨터를 통째로 임대해주는 상품.<br>
 						- 화면 우측 상단에서 지역을 서울로 지정한다.<br>
   						화면 좌측에서 인스턴스 클릭.(컴퓨터 1대가 인스턴스 하나라고 보면 된다.)
                      </div>
                    </li>
                    <li class="media">
                      <img src="<c:url value='/resources/post/img/rds.png'/>/" class="mr-3" alt="AWS RDS" width="160px" height="160px">
                      <div class="media-body">
                        <h5 class="mt-0 mb-1">AWS RDS</h5>
                        - Relational Database Service(관계형 데이터베이스 서비스)<br>
  						<strong>AWS의 데이터베이스 전용 서비스.</strong>
 						- 스케일링, 컴퓨터 교체작업, 백업을 더 안전하고 편리하고 효율적으로 하는 방법, 보안에 대한 것. 이런 것들을 AWS에 위임해서 처리한다.<br>
 						- DB의 스키마(구조)를 짜는 등의 본질적인 일에 집중할 수 있도록 도와주는 서비스.<br>
 						- 클라우드 환경의 장점을 발휘할 수 있다.<br>
 						- AWS RDS에서 제공하는 DB엔진은 MySQL, MariaDB, Aurora, PostgreSQL, Oracle, SQL Server가 있다.
                      </div>
                    </li>
                  </ul>
                </div>  
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