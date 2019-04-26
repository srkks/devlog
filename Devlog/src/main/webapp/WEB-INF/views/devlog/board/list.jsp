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
                    <h2>자유게시판</h2>
                </div>
                <p class="lead">자유롭게 소통하는 공간</p>
                <hr>
                <table class="table table-striped" style="max-width:1080px;">
                        <thead>
                            <tr>
                                <th class="mobile" style="width: 55px; text-align: center;">번호</th>
                                <th style="text-align: center;">제목</th>
                                <th class="mobile" style="width: 90px; text-align: center;">작성자</th>
                                <th class="mobile" style="width: 120px; text-align: center;">날짜</th>
                                <th class="mobile" style="width: 70px; text-align: center;">조회수</th>
                            </tr>
                        </thead>
                            <c:forEach items="${list}" var="board">
                            <tbody>
                                <tr>
                                    <td class="mobile" style="text-align: center;"><c:out value="${board.bno}"/></td>
                                    <td style="color:black;"><a class='move' href='<c:out value="${board.bno}"/>'>
									<c:out value="${board.title}" />
							        </a></td>
                                    <td class="mobile" style="text-align: center;"><c:out value="${board.writer}"/></td>
                                    <td class="mobile" style="text-align: center;"><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd"/></td>
                                    <td class="mobile" style="text-align: center;"><c:out value="${board.viewCnt}"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                    </table>
                    
                    <div class='row mb-20'>
					<div class="col-lg-10">

						<form id='searchForm' action="/devlog/board/list" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
								<option value="W"
									<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
								<option value="TC"
									<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목  or 내용</option>
								<option value="TW"
									<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목  or 작성자</option>
								<option value="TWC"
									<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목 or 내용 or 작성자</option>
							</select> 
								<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' />
							 	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
							 	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
							<button class='btn btn-secondary mb-2'>Search</button>
						</form>
					</div>
				
                    
                    <div style="max-width: 1080px;">
                        <button id="regBtn" type="button" class="btn btn-secondary float-right ml-3">글쓰기</button>
                    </div>
                    
                </div>
                <div class="row mt-2">
                    	<div class="col-sm-4"></div>
                    	<div class='pull-right col-sm-4'>
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
									<li class="paginate_button previous"><a	href="${pageMaker.startPage -1}">Previous</a></li>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
									<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
										<a href="${num}">${num}</a>
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
								</c:if>
							</ul>
					</div>
				<!--  end Pagination -->
			</div>
                  	
                  	<div class="col-sm-4"></div>
                  </div>
                <%-- 페이지 번호 설정 --%>
                <form id='actionForm' action="/devlog/board/list" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
 					<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
 					<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>
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
  	
  	<!-- 자바스크립트 설정 -->
  	<script type="text/javascript">
  	$(document).ready(function() {
		
  		var cx = '007988835491953345922:1foynco_pdw';
        var gcse = document.createElement('script');
        gcse.type = 'text/javascript';
        gcse.async = true;
        gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(gcse, s);
  		
  		
  		
  		var result = '<c:out value="${result}"/>';
		checkModal(result);
		history.replaceState({}, null, null);

		function checkModal(result) {
			if (result === '' || history.state) {
				return;
			}
			if (parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result)	+ " 번이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		} //end of checkModal(result)

			<%--글쓰기 버튼, 눌렀을 때 form태그로 처리하지 않고 자바스크립트로 처리 --%>
			$("#regBtn").on("click", function() { 
 				self.location = "register";
    		});

			<%-- 전역변수 --%>	
			var actionForm = $("#actionForm");
			$(".paginate_button a").on("click",	function(e) {
				e.preventDefault();
				console.log('click');
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});

			$(".move").on("click",function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href") + "'>");
				actionForm.attr("action","/devlog/board/get");
				actionForm.submit();
			});

			<%-- 전역변수, 검색창--%>
			var searchForm = $("#searchForm");
			
			$("#searchForm button").on("click", function() {
				if (!searchForm.find("option:selected").val()) {
					alert("검색종류를 선택하세요");
					return false;
				}
				if (!searchForm.find("input[name='keyword']").val()) {
					alert("키워드를 입력하세요");
					return false;
				}
				searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				searchForm.submit();
			});

});

  	
    
      
    
  
  	
  	
  	</script>
  </body>
</html>